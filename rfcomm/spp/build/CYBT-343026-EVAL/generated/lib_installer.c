// ./../../../wiced_btsdk/dev-kit/baselib/20706A2/make/scripts/wiced-gen-lib-installer.pl
// args: 
// output: D:/MODUS2v1_SPP20706/RFCOMM-CYBT-343026/rfcomm/spp/build/CYBT-343026-EVAL/generated/lib_installer.c
#include <stdint.h>
typedef struct tag_PATCH_TABLE_ENTRY_t {
	uint32_t breakout;
	uint32_t replacement;
} PATCH_TABLE_ENTRY_t;
void patch_autoInstall(uint32_t old_address, uint32_t new_address);
void patch_autoReplace(uint32_t breakout_address, uint32_t replacement);
void patch_autoReplaceData(uint32_t breakout_address, uint32_t replacement);
void install_libs(void);

void install_libs(void)
{
}
