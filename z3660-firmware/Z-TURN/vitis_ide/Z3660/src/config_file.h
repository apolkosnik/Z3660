/*
 * config_file.h
 *
 *  Created on: 28 feb. 2023
 *      Author: shanshe
 */

#ifndef SRC_CONFIG_FILE_H_
#define SRC_CONFIG_FILE_H_

enum BOOTMODE{
   CPU,
   MUSASHI,
   UAE,
   UAEJIT,
   BOOTMODE_NUM
};

enum YESNO{
   NO,
   YES,
   YESNO_NUM
};
enum YESNOMIN{
   _NO,
   _YES,
   _MIN,
   YESNOMIN_NUM
};
enum BOOTSCREEN_RES{
   RES_800x600,
   RES_1280x720,
   RES_1920x1080,
   RES_NUM
};

typedef struct {
   int boot_mode;
   int scsiboot;
   int kickstart;
   int ext_kickstart;
   int scsi_num[7];
   char hdf[20][150];
   int autoconfig_ram;
   int autoconfig_rtg;
   int cpu_ram;
   float resistor;
   float temperature;
   int cpufreq;
   char kickstart0[150];
   char kickstart1[150];
   char kickstart2[150];
   char kickstart3[150];
   char kickstart4[150];
   char kickstart5[150];
   char kickstart6[150];
   char kickstart7[150];
   char kickstart8[150];
   char kickstart9[150];
   char ext_kickstart0[150];
   char ext_kickstart1[150];
   char ext_kickstart2[150];
   char ext_kickstart3[150];
   char ext_kickstart4[150];
   char ext_kickstart5[150];
   char ext_kickstart6[150];
   char ext_kickstart7[150];
   char ext_kickstart8[150];
   char ext_kickstart9[150];
   int enable_test;
   int bootscreen_resolution;
   uint8_t mac_address[6];
   uint8_t pad[2];
   float bp_ton;
   float bp_toff;
} CONFIG;
typedef struct {
   int boot_mode;
   int scsiboot;
   int autoconfig_ram;
   int autoconfig_rtg;
   int cpu_ram;
   int kickstart;
   int ext_kickstart;
   int enable_test;
   int cpufreq;
   int bootscreen_resolution;
   int scsi_num[7];
   uint8_t mac_address[6];
   char pad[2];
   float bp_ton;
   float bp_toff;
   char preset_name[50];
} ENV_FILE_VARS;

enum CONFITEM {
   CONFITEM_NONE,
   CONFITEM_BOOTMODE,
   CONFITEM_KICKSTART,
   CONFITEM_EXT_KICKSTART,
   CONFITEM_SCSI_BOOT_ENABLE,
   CONFITEM_HDF0,
   CONFITEM_HDF1,
   CONFITEM_HDF2,
   CONFITEM_HDF3,
   CONFITEM_HDF4,
   CONFITEM_HDF5,
   CONFITEM_HDF6,
   CONFITEM_HDF7,
   CONFITEM_HDF8,
   CONFITEM_HDF9,
   CONFITEM_HDF10,
   CONFITEM_HDF11,
   CONFITEM_HDF12,
   CONFITEM_HDF13,
   CONFITEM_HDF14,
   CONFITEM_HDF15,
   CONFITEM_HDF16,
   CONFITEM_HDF17,
   CONFITEM_HDF18,
   CONFITEM_HDF19,
   CONFITEM_SCSI0,
   CONFITEM_SCSI1,
   CONFITEM_SCSI2,
   CONFITEM_SCSI3,
   CONFITEM_SCSI4,
   CONFITEM_SCSI5,
   CONFITEM_SCSI6,
   CONFITEM_AUTOCONFIG_RAM_ENABLE,
   CONFITEM_AUTOCONFIG_RTG_ENABLE,
   CONFITEM_CPU_RAM_ENABLE,
   CONFITEM_RESISTOR,
   CONFITEM_TEMPERATURE,
   CONFITEM_CPUFREQ,
   CONFITEM_KICKSTART0,
   CONFITEM_KICKSTART1,
   CONFITEM_KICKSTART2,
   CONFITEM_KICKSTART3,
   CONFITEM_KICKSTART4,
   CONFITEM_KICKSTART5,
   CONFITEM_KICKSTART6,
   CONFITEM_KICKSTART7,
   CONFITEM_KICKSTART8,
   CONFITEM_KICKSTART9,
   CONFITEM_EXT_KICKSTART0,
   CONFITEM_EXT_KICKSTART1,
   CONFITEM_EXT_KICKSTART2,
   CONFITEM_EXT_KICKSTART3,
   CONFITEM_EXT_KICKSTART4,
   CONFITEM_EXT_KICKSTART5,
   CONFITEM_EXT_KICKSTART6,
   CONFITEM_EXT_KICKSTART7,
   CONFITEM_EXT_KICKSTART8,
   CONFITEM_EXT_KICKSTART9,
   CONFITEM_ENABLE_TEST,
   CONFITEM_BOOTSCREEN_RESOLUTION,
   CONFITEM_MAC_ADDRESS,
   CONFITEM_BP_TON,
   CONFITEM_BP_TOFF,
   CONFITEM_NUM
};
#define CPUFREQ_MIN 50
#define CPUFREQ_MAX 100

void read_config_file(void);
void read_env_files(void);
extern const char *bootmode_names[];
int write_env_files(ENV_FILE_VARS *env_file);
int write_env_files_boot(ENV_FILE_VARS *env_file);
int write_env_files_scsi(ENV_FILE_VARS *env_file);
int write_env_files_misc(ENV_FILE_VARS *env_file);
int write_env_files_bootscres(ENV_FILE_VARS *env_file);
int write_env_files_preset(ENV_FILE_VARS *env_file);
int delete_env_files(void);
extern CONFIG config,default_config,temp_config;
extern ENV_FILE_VARS env_file_vars_temp[9]; // really size 8
extern int preset_selected;
#endif /* SRC_CONFIG_FILE_H_ */
