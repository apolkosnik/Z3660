/*
 * Z3660 Graphics Card Driver based on MNT ZZ9000 rev 1.6
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 * GNU General Public License v3.0 or later
 */

/*
 * MNT ZZ9000 Amiga Graphics Card Driver (ZZ9000.card)
 * Copyright (C) 2016-2019, Lukas F. Hartmann <lukas@mntre.com>
 *                          MNT Research GmbH, Berlin
 *                          https://mntre.com
 *
 * More Info: https://mntre.com/zz9000
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 * GNU General Public License v3.0 or later
 *
 * https://spdx.org/licenses/GPL-3.0-or-later.html
 */

#include <exec/lists.h>
#include <exec/interrupts.h>
#include <graphics/gfx.h>

#define int32 long
#define int16 short
#define int8  char

#define uint32 unsigned long
#define uint16 unsigned short
#define uint8  unsigned char

enum RTG_COLOR_MODES {
  rtg_color_planar,
  rtg_color_clut,
  rtg_color_16bit,
  rtg_color_24bit,
  rtg_color_32bit,
  rtg_color_num,
};

#define RTG_COLOR_FORMAT_PLANAR 0
#define RTG_COLOR_FORMAT_CLUT 1
#define RTG_COLOR_FORMAT_RGB888 2
#define RTG_COLOR_FORMAT_BGR888 4
#define RTG_COLOR_FORMAT_RGB565_WEIRD1 8
#define RTG_COLOR_FORMAT_RGB565_WEIRD2 16
#define RTG_COLOR_FORMAT_ARGB 32
#define RTG_COLOR_FORMAT_ABGR 64
#define RTG_COLOR_FORMAT_RGBA 128
#define RTG_COLOR_FORMAT_BGRA 256
#define RTG_COLOR_FORMAT_RGB565 512
#define RTG_COLOR_FORMAT_RGB555 1024
#define RTG_COLOR_FORMAT_BGR565_WEIRD3 2048
#define RTG_COLOR_FORMAT_BGR565_WEIRD4 4096
#define RTG_COLOR_FORMAT_32BIT (RTG_COLOR_FORMAT_ARGB|RTG_COLOR_FORMAT_ABGR|RTG_COLOR_FORMAT_RGBA|RTG_COLOR_FORMAT_BGRA)

struct ModeInfo {
  void* succ;
  void* pred;
  uint8 type;
  uint8 pri;

  void* unknown;

  uint16 open_count;
  uint16 active;
  uint16 width;
  uint16 height;
  uint8 depth;
  uint8 flags;

  uint16 hmax;
	uint16 hblank_size;
	uint16 hsync_start;
	uint16 hsync_size;
	uint8 hskew;
	uint8 hskew_enable;
	
	uint16 vmax;
	uint16 vblank_size;
	uint16 vsync_start;
	uint16 vsync_size;
	
	uint8 clock;
	uint8 clock_div;
	uint32 pixel_clock_hz;
};

struct RenderInfo {
  uint8* memory;
  uint16 pitch;
  uint16 unknown1;
  uint32 color_format;
};

struct Template {
  uint8* memory;
  uint16 pitch;
  uint8  xo;
  uint8  draw_mode;
  uint32 fg_pen;
  uint32 bg_pen;
};

struct Pattern {
  uint8* memory;
  uint16 xo;
  uint16 yo;
  uint32 fg_pen;
  uint32 bg_pen;
  uint8 size;
  uint8 draw_mode;
};

struct Line {
  int16 x, y;
  uint16 len;
  int16 dx, dy;
  int16 dummy1, dummy2, dummy3;
  uint16 pattern;
  uint16 pattern_offset;
  uint32 fg_pen, bg_pen;
  BOOL horizontal;
  uint8 draw_mode;
  uint8 padding;
  uint16 x_origin, y_origin;
};

struct ColorIndexMapping {
  uint32   mask;
  uint32   colors[256];
};

struct RTGBoard {
  void* registers;
  uint8* memory;
  void* io;
  uint32 memory_size;
  
  char* name;
  char unknown1[32];

  void* self;
  void* p1;
  void* exec;
  void* p2;

  struct Interrupt int_hard;
  struct Interrupt int_soft;
  char lock[46];
  struct MinList resolutions;

  // device properties

  uint32 type; // really longs?
  uint32 chip_type;
  uint32 controller_type;
  
  uint16 monitor_switch;
  uint16 bits_per_channel;
  uint32 flags;
  uint16 sprite_flags;
  uint16 private_flags1;
  uint32 private_flags2;

  uint16 number;
  uint16 color_formats;

  uint16 max_bitmap_w[rtg_color_num];
  uint16 max_bitmap_h[rtg_color_num];

  uint16 max_res_w[rtg_color_num];

  uint16 max_res_h[rtg_color_num];

  uint32 max_alloc;
  uint32 max_alloc_part;

  uint32 clock_ram;
  uint32 num_pixelclocks[rtg_color_num];

  // driver defined function hooks
  
  void* fn_memory_alloc;
  void* fn_memory_free;
  void* fn_monitor_switch;
  void* fn_set_palette;
  void* fn_init_dac;
  void* fn_init_mode;
  void* fn_pan;
  void* fn_get_pitch;
  void* fn_map_address;
  void* fn_is_bitmap_compatible;
  void* fn_enable_display;
  void* fn_get_pixelclock_index;
  void* fn_get_pixelclock_hz;
  void* fn_set_clock;
  void* fn_set_memory_mode;
  void* fn_set_write_mask;
  void* fn_set_clear_mask;
  void* fn_set_read_plane;
  void* fn_vsync_wait;
  void* f20; // set interrupt
  void* fn_blitter_wait;
  void* f22;
  void* f23;
  void* f24;
  void* f25;
  void* fn_p2c;
  void (*fn_p2c_fallback)(__reg("a0") struct RTGBoard* b, __reg("a1") struct BitMap* bm, __reg("a2") struct RenderInfo* r, __reg("d0") uint16 x, __reg("d1") uint16 y, __reg("d2") uint16 dx, __reg("d3") uint16 dy, __reg("d4") uint16 w, __reg("d5") uint16 h, __reg("d6") uint8 minterm, __reg("d7") uint8 mask);
  void* fn_rect_fill;
  void* fn_rect_fill_fallback;
  void* fn_rect_invert;
  void* fn_rect_invert_fallback;
  void* fn_rect_copy;
  void (*fn_rect_copy_fallback)(__reg("a0") struct RTGBoard* b, __reg("a1") struct RenderInfo* r, __reg("d0") uint16 x, __reg("d1") uint16 y, __reg("d2") uint16 dx, __reg("d3") uint16 dy, __reg("d4") uint16 w, __reg("d5") uint16 h, __reg("d6") uint8 m, __reg("d7") uint16 format);
  void* fn_rect_template;
  void* fn_rect_template_fallback;
  void* fn_rect_pattern;
  void* fn_rect_pattern_fallback;
  void* fn_line;
  void* fn_line_fallback;
  void* fn_rect_copy_nomask;
  void* fn_rect_copy_nomask_fallback;
  void* fn_p2d;
  void (*fn_p2d_fallback)(__reg("a0") struct RTGBoard* b, __reg("a1") struct BitMap* bm, __reg("a2") struct RenderInfo* r, __reg("a3") struct ColorIndexMapping* cim, __reg("d0") uint16 x, __reg("d1") uint16 y, __reg("d2") uint16 dx, __reg("d3") uint16 dy, __reg("d4") uint16 w, __reg("d5") uint16 h, __reg("d6") uint8 minterm, __reg("d7") uint8 mask);
  void* f44; // res0
  void* f45;
  void* f46;
  void* fn_set_split_pos;
  void* f48;
  void* f49;
  void* f50;
  void* f51;
  void* f52;
  void* f53;

  void* fn_is_vsynced;
  void* fn_get_current_y;
  void* fn_set_dpms;
  void* fn_reset;
  void* f58;

  void* fn_bitmap_alloc;
  void* fn_bitmap_free;
  void* fn_get_bitmap;

  void* fn_sprite_setup;
  void* fn_sprite_xy;
  void* fn_sprite_bitmap;
  void* fn_sprite_colors;

  void* f66;
  void* f67;
  void* f68;

  struct MinList features;

  // runtime properties

  struct ModeInfo* mode_info;

  uint32 color_format;

  int16 offset_x;
  int16 offset_y;
  uint8 color_depth;
  uint8 mask_bg;
  int16 border;
  uint32 mask_fg;

  uint8 palette[3*256];

  struct ViewPort* current_viewport;
  struct BitMap* current_bitmap;
  struct BitMapExtra* current_bitmap_extra;
  struct MinList bitmap_list;
  struct MinList memory_list;

  int16 cursor_x;
  int16 cursor_y;
  uint8 cursor_w;
  uint8 cursor_h;
  uint8 cursor_xo;
  uint8 cursor_yo;

  uint16* cursor_sprite_bitmap;
  uint8 cursor_pen[4];
  struct Rectangle cursor_rect;
  uint8* cursor_clut_bitmap;
  uint16* cursor_rendered_bitmap;
  uint8* cursor_behind_buffer;

  uint32 scratch[32];

  void* memory2;
  uint32 memory2_size;
  void* unknown5;
  uint32 vsync_seconds;
  uint32 vsync_microseconds;
  uint32 vsync_frame_microseconds;
  struct MsgPort unknown6;
  struct MinList unknown7;

  int32 default_formats;

  uint8* mouse_image_buffer;

  struct ViewPort* back_viewport;
  struct BitMap* back_bitmap;
  struct BitMapExtra* back_bitmap_extra;
  int16 y_split;
  uint32 max_planar_memory;
};
