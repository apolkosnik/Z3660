/* JTAG low level functions and base class for cables

Copyright (C) 2004 Andrew Rogers
Additions (C) 2005-2013  Uwe Bonnes
                         bon@elektron.ikp.physik.tu-darmstadt.de

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

Changes:
Dmitry Teytelman [dimtey@gmail.com] 14 Jun 2006 [applied 13 Aug 2006]:
    Code cleanup for clean -Wall compile.
    Extensive changes to support FT2232 driver.
*/

#ifndef IOBASE_H
#define IOBASE_H

#define BLOCK_SIZE 65536
#define CHUNK_SIZE 128
#define TICK_COUNT 2048
#define bool int


typedef struct
{

   bool	      verbose;
   unsigned char ones[CHUNK_SIZE], zeros[CHUNK_SIZE];
   unsigned char tms_buf[CHUNK_SIZE];
   unsigned int tms_len; /* in Bits*/
} IOBase;
extern IOBase iobase;

void IOBase_init(IOBase *io);

  void setVerbose_io(IOBase *io,bool v);
  void shiftTDITDO(IOBase *io, unsigned char *tdi, unsigned char *tdo, int length, bool last);
  void shiftTDI(IOBase *io, unsigned char *tdi, int length, bool last);
  void shiftTDO(IOBase *io,unsigned char *tdo, int length, bool last);
  void shift(IOBase *io,bool tdi, int length, bool last);
  void set_tms(IOBase *io,bool value);
  void flush_tms(IOBase *io);

  void txrx_block(unsigned char *tdi, unsigned char *tdo, int length, bool last);
  void tx_tms(unsigned char *pat, int length);
  void settype(int subtype);

//  void nextTapState(Jtag *j,bool tms);

#endif // IOBASE_H
