OUTPUT_FORMAT ("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
SEARCH_DIR(.)
/* pram_patch_begin=0x0D0200 pram_patch_end=0x0DE9D8 pram_end=0x0E0000 */
/* ram_patch_begin=0x216AD0 ram_patch_end=0x217A38 ram_end=0x247000 */
/* FLASH0_BEGIN_ADDR=0xFF000000 FLASH0_LENGTH=0x080000 */
/* FLASH0_SS=0x000000 */
/* FLASH0_VS=0x001000 */
/* FLASH0_DS=0x003000 */
/* FLASH0_DS2=0x042000 */
/* UPGRADE_STORAGE_LENGTH=0x03F000 (off_chip_sflash) */
MEMORY
{
	ram (rwx) : ORIGIN = 0x217A38, LENGTH = 0x2F3C8
	log_section (r) : ORIGIN = 0x81000004, LENGTH = 0x100000
}
EXTERN(spar_irom_begin spar_irom_end spar_irom_length);
EXTERN(spar_iram_begin spar_iram_end spar_iram_length);
EXTERN(spar_iram_data_begin spar_iram_data_end spar_iram_data_length);
EXTERN(spar_iram_bss_begin spar_iram_bss_end spar_iram_bss_length);
EXTERN(spar_irom_data_begin);
PROVIDE(spar_irom_length = spar_irom_end - spar_irom_begin);
PROVIDE(spar_iram_length = spar_iram_end - spar_iram_begin);
PROVIDE(spar_iram_data_length = spar_iram_data_end - spar_iram_data_begin);
PROVIDE(spar_iram_bss_length = spar_iram_bss_end - spar_iram_bss_begin);
SECTIONS
{
	spar_irom_begin = 0x217A38;
	.text : 
	{
		CREATE_OBJECT_SYMBOLS
		*(.app_init_code)
		*(.emb_text)
		*(.text)
		*(.text_in_ram)
		*(.text.*)
		*(EmHeAacDec)
		*(.gnu.linkonce.t.*)
		*(.glue_7t)
		*(.glue_7)
		*(.vfp11_veneer)
		*(.v4_bx)
		*(.ARM.extab*)
		*(.gnu.linkonce.armextab.*)
		*(.ARM.exidx*)
		*(.gnu.linkonce.armexidx.*)
		*(.vpc_decoder_section)
	} >ram
	.rodata : ALIGN (4)
	{
		CREATE_OBJECT_SYMBOLS
		*(const_drom_var)
		*(.rodata)
		*(.constdata*)
		*(.rodata.*)
		*(.gnu.linkonce.r.*)
		*(.data.rom)
		spar_irom_end = .;
	} >ram
	.data : ALIGN (4)
	{
		CREATE_OBJECT_SYMBOLS
		spar_iram_begin = .;
		spar_iram_data_begin = .;
		*(.data)
		*(.data.*)
		*(.gnu.linkonce.d.*)
		*(.init_patch_table)
		spar_iram_data_end = .;
	} >ram
	spar_irom_data_begin = spar_iram_data_begin;
	.bss : ALIGN (4)
	{
		CREATE_OBJECT_SYMBOLS
		spar_iram_bss_begin = .;
		*(.bss)
		*(.bss.*)
		*(.gnu.linkonce.b.*)
		*(COMMON)
		spar_iram_bss_end = .;
		spar_iram_end = .;
	} >ram
	.setup : ALIGN (4)
	{
		CREATE_OBJECT_SYMBOLS
		*(.init_code)
		*(.init_text)
		*(.spar_setup)
	} >ram
	.log_section : ALIGN (4)
	{
		CREATE_OBJECT_SYMBOLS
		KEEP(*(log_data))
	} >log_section
}
