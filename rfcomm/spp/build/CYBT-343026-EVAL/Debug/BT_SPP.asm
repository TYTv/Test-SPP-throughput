
D:/MODUS2v1_SPP20706/RFCOMM-CYBT-343026/rfcomm/spp/build/CYBT-343026-EVAL/Debug/BT_SPP.elf:     file format elf32-littlearm


Disassembly of section .text:

00217a38 <wiced_bt_app_start>:
  217a38:	b508      	push	{r3, lr}
  217a3a:	2004      	movs	r0, #4
  217a3c:	f6c5 fa51 	bl	dcee2 <wiced_bt_trace_enable_patch+0x31>
  217a40:	f5f5 fa83 	bl	cf4a <wiced_hal_gpio_register_pin_for_interrupt+0x69>
  217a44:	2300      	movs	r3, #0
  217a46:	211f      	movs	r1, #31
  217a48:	461a      	mov	r2, r3
  217a4a:	2004      	movs	r0, #4
  217a4c:	f5f5 fa86 	bl	cf5c <wiced_hal_puart_init+0x11>
  217a50:	2100      	movs	r1, #0
  217a52:	4a07      	ldr	r2, [pc, #28]	; (217a70 <Acaf36800+0x38>)
  217a54:	4608      	mov	r0, r1
  217a56:	f5f6 ff5d 	bl	e914 <mia_init+0xef>
  217a5a:	4806      	ldr	r0, [pc, #24]	; (217a74 <Acaf36800+0x3c>)
  217a5c:	f5f5 faac 	bl	cfb8 <wiced_hal_puart_reset_puart_interrupt+0x13>
  217a60:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  217a64:	4a04      	ldr	r2, [pc, #16]	; (217a78 <Acaf36800+0x40>)
  217a66:	4905      	ldr	r1, [pc, #20]	; (217a7c <Acaf36800+0x44>)
  217a68:	4805      	ldr	r0, [pc, #20]	; (217a80 <Acaf36800+0x48>)
  217a6a:	f6c1 b926 	b.w	d8cba <wiced_bt_app_post_stack_init_patch+0x2ab>
  217a6e:	bf00      	nop
  217a70:	002dc6c0 	.word	0x002dc6c0
  217a74:	00217b41 	.word	0x00217b41
  217a78:	002182b4 	.word	0x002182b4
  217a7c:	002182c4 	.word	0x002182c4
  217a80:	00217cb5 	.word	0x00217cb5

00217a84 <spp_connection_up_callback>:
  217a84:	2200      	movs	r2, #0
  217a86:	4b02      	ldr	r3, [pc, #8]	; (217a90 <spp_connection_up_callback+0xc>)
  217a88:	8018      	strh	r0, [r3, #0]
  217a8a:	605a      	str	r2, [r3, #4]
  217a8c:	4770      	bx	lr
  217a8e:	bf00      	nop
  217a90:	002183e0 	.word	0x002183e0

00217a94 <spp_connection_down_callback>:
  217a94:	2200      	movs	r2, #0
  217a96:	4b01      	ldr	r3, [pc, #4]	; (217a9c <spp_connection_down_callback+0x8>)
  217a98:	801a      	strh	r2, [r3, #0]
  217a9a:	4770      	bx	lr
  217a9c:	002183e0 	.word	0x002183e0

00217aa0 <spp_rx_data_callback>:
  217aa0:	b570      	push	{r4, r5, r6, lr}
  217aa2:	4614      	mov	r4, r2
  217aa4:	480c      	ldr	r0, [pc, #48]	; (217ad8 <spp_rx_data_callback+0x38>)
  217aa6:	4e0d      	ldr	r6, [pc, #52]	; (217adc <spp_rx_data_callback+0x3c>)
  217aa8:	6843      	ldr	r3, [r0, #4]
  217aaa:	188d      	adds	r5, r1, r2
  217aac:	4413      	add	r3, r2
  217aae:	6043      	str	r3, [r0, #4]
  217ab0:	1b28      	subs	r0, r5, r4
  217ab2:	b174      	cbz	r4, 217ad2 <spp_rx_data_callback+0x32>
  217ab4:	6833      	ldr	r3, [r6, #0]
  217ab6:	f003 030c 	and.w	r3, r3, #12
  217aba:	2b08      	cmp	r3, #8
  217abc:	d1fa      	bne.n	217ab4 <spp_rx_data_callback+0x14>
  217abe:	0a23      	lsrs	r3, r4, #8
  217ac0:	d004      	beq.n	217acc <spp_rx_data_callback+0x2c>
  217ac2:	21ff      	movs	r1, #255	; 0xff
  217ac4:	f6c3 fed2 	bl	db86c <puart_read+0x3f>
  217ac8:	3cff      	subs	r4, #255	; 0xff
  217aca:	e7f1      	b.n	217ab0 <spp_rx_data_callback+0x10>
  217acc:	4621      	mov	r1, r4
  217ace:	f6c3 fecd 	bl	db86c <puart_read+0x3f>
  217ad2:	2001      	movs	r0, #1
  217ad4:	bd70      	pop	{r4, r5, r6, pc}
  217ad6:	bf00      	nop
  217ad8:	002183e0 	.word	0x002183e0
  217adc:	00352224 	.word	0x00352224

00217ae0 <app_timeout>:
  217ae0:	2300      	movs	r3, #0
  217ae2:	b537      	push	{r0, r1, r2, r4, r5, lr}
  217ae4:	4c13      	ldr	r4, [pc, #76]	; (217b34 <app_timeout+0x54>)
  217ae6:	6865      	ldr	r5, [r4, #4]
  217ae8:	6063      	str	r3, [r4, #4]
  217aea:	68a3      	ldr	r3, [r4, #8]
  217aec:	442b      	add	r3, r5
  217aee:	60a3      	str	r3, [r4, #8]
  217af0:	b1e5      	cbz	r5, 217b2c <app_timeout+0x4c>
  217af2:	68e3      	ldr	r3, [r4, #12]
  217af4:	3301      	adds	r3, #1
  217af6:	60e3      	str	r3, [r4, #12]
  217af8:	2100      	movs	r1, #0
  217afa:	4a0f      	ldr	r2, [pc, #60]	; (217b38 <app_timeout+0x58>)
  217afc:	4608      	mov	r0, r1
  217afe:	f5f5 fdad 	bl	d65c <wiced_va_printf+0x1f7>
  217b02:	68e3      	ldr	r3, [r4, #12]
  217b04:	68a2      	ldr	r2, [r4, #8]
  217b06:	0299      	lsls	r1, r3, #10
  217b08:	fbb2 f2f1 	udiv	r2, r2, r1
  217b0c:	2100      	movs	r1, #0
  217b0e:	0aad      	lsrs	r5, r5, #10
  217b10:	9201      	str	r2, [sp, #4]
  217b12:	9500      	str	r5, [sp, #0]
  217b14:	4a09      	ldr	r2, [pc, #36]	; (217b3c <app_timeout+0x5c>)
  217b16:	4608      	mov	r0, r1
  217b18:	f5f5 fda0 	bl	d65c <wiced_va_printf+0x1f7>
  217b1c:	2100      	movs	r1, #0
  217b1e:	4608      	mov	r0, r1
  217b20:	4a05      	ldr	r2, [pc, #20]	; (217b38 <app_timeout+0x58>)
  217b22:	b003      	add	sp, #12
  217b24:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
  217b28:	f5f5 bd98 	b.w	d65c <wiced_va_printf+0x1f7>
  217b2c:	e9c4 5502 	strd	r5, r5, [r4, #8]
  217b30:	e7e2      	b.n	217af8 <app_timeout+0x18>
  217b32:	bf00      	nop
  217b34:	002183e0 	.word	0x002183e0
  217b38:	00218364 	.word	0x00218364
  217b3c:	00218367 	.word	0x00218367

00217b40 <puart_rx_interrupt_callback>:
  217b40:	b530      	push	{r4, r5, lr}
  217b42:	2400      	movs	r4, #0
  217b44:	b085      	sub	sp, #20
  217b46:	eb0d 0004 	add.w	r0, sp, r4
  217b4a:	b2e5      	uxtb	r5, r4
  217b4c:	f6c3 fe6e 	bl	db82c <wiced_raw_uart_get_buffer+0x33d>
  217b50:	b118      	cbz	r0, 217b5a <puart_rx_interrupt_callback+0x1a>
  217b52:	3401      	adds	r4, #1
  217b54:	2c10      	cmp	r4, #16
  217b56:	d1f6      	bne.n	217b46 <puart_rx_interrupt_callback+0x6>
  217b58:	4625      	mov	r5, r4
  217b5a:	4c08      	ldr	r4, [pc, #32]	; (217b7c <puart_rx_interrupt_callback+0x3c>)
  217b5c:	8820      	ldrh	r0, [r4, #0]
  217b5e:	b140      	cbz	r0, 217b72 <puart_rx_interrupt_callback+0x32>
  217b60:	f000 facc 	bl	2180fc <wiced_bt_spp_can_send_more_data>
  217b64:	2801      	cmp	r0, #1
  217b66:	d104      	bne.n	217b72 <puart_rx_interrupt_callback+0x32>
  217b68:	462a      	mov	r2, r5
  217b6a:	4669      	mov	r1, sp
  217b6c:	8820      	ldrh	r0, [r4, #0]
  217b6e:	f000 fa9d 	bl	2180ac <wiced_bt_spp_send_session_data>
  217b72:	f5f5 fa17 	bl	cfa4 <wiced_hal_puart_enable_rx+0x11>
  217b76:	b005      	add	sp, #20
  217b78:	bd30      	pop	{r4, r5, pc}
  217b7a:	bf00      	nop
  217b7c:	002183e0 	.word	0x002183e0

00217b80 <clock_SystemTimeMicroseconds64>:
  217b80:	b507      	push	{r0, r1, r2, lr}
  217b82:	4668      	mov	r0, sp
  217b84:	f614 fe16 	bl	2c7b4 <mia_enableMiaInterrupt+0x12a5>
  217b88:	f240 23fb 	movw	r3, #763	; 0x2fb
  217b8c:	9800      	ldr	r0, [sp, #0]
  217b8e:	9a01      	ldr	r2, [sp, #4]
  217b90:	fba0 0103 	umull	r0, r1, r0, r3
  217b94:	fb03 1102 	mla	r1, r3, r2, r1
  217b98:	2264      	movs	r2, #100	; 0x64
  217b9a:	2300      	movs	r3, #0
  217b9c:	f662 f8d8 	bl	79d50 <wiced_get_mpaf_trans_handle+0x751b>
  217ba0:	b003      	add	sp, #12
  217ba2:	f85d fb04 	ldr.w	pc, [sp], #4
	...

00217ba8 <application_init>:
  217ba8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
  217baa:	f000 f970 	bl	217e8e <wiced_bt_app_init>
  217bae:	2200      	movs	r2, #0
  217bb0:	f240 2109 	movw	r1, #521	; 0x209
  217bb4:	4610      	mov	r0, r2
  217bb6:	f6c1 ffb1 	bl	d9b1c <wiced_hal_gpio_set_pin_output+0x1b>
  217bba:	2200      	movs	r2, #0
  217bbc:	4934      	ldr	r1, [pc, #208]	; (217c90 <application_init+0xe8>)
  217bbe:	4610      	mov	r0, r2
  217bc0:	f6c2 f890 	bl	d9ce4 <wiced_hal_gpio_get_pin_input_status+0xd3>
  217bc4:	2302      	movs	r3, #2
  217bc6:	2200      	movs	r2, #0
  217bc8:	4932      	ldr	r1, [pc, #200]	; (217c94 <application_init+0xec>)
  217bca:	4833      	ldr	r0, [pc, #204]	; (217c98 <application_init+0xf0>)
  217bcc:	f6c6 fd6a 	bl	de6a4 <wiced_hal_rand_gen_num_array+0x7f>
  217bd0:	f44f 7084 	mov.w	r0, #264	; 0x108
  217bd4:	f6b9 faa4 	bl	d1120 <A0ca5e200+0xe7>
  217bd8:	4e30      	ldr	r6, [pc, #192]	; (217c9c <application_init+0xf4>)
  217bda:	4605      	mov	r5, r0
  217bdc:	b350      	cbz	r0, 217c34 <application_init+0x8c>
  217bde:	6833      	ldr	r3, [r6, #0]
  217be0:	462f      	mov	r7, r5
  217be2:	4618      	mov	r0, r3
  217be4:	9301      	str	r3, [sp, #4]
  217be6:	f662 f98d 	bl	79f04 <_printf_int_dec+0x73>
  217bea:	1c43      	adds	r3, r0, #1
  217bec:	f807 3b02 	strb.w	r3, [r7], #2
  217bf0:	2309      	movs	r3, #9
  217bf2:	b2c4      	uxtb	r4, r0
  217bf4:	4622      	mov	r2, r4
  217bf6:	706b      	strb	r3, [r5, #1]
  217bf8:	9901      	ldr	r1, [sp, #4]
  217bfa:	4638      	mov	r0, r7
  217bfc:	f61a f95e 	bl	31ebc <bsc_OpExtended+0x2d91>
  217c00:	2203      	movs	r2, #3
  217c02:	193b      	adds	r3, r7, r4
  217c04:	553a      	strb	r2, [r7, r4]
  217c06:	705a      	strb	r2, [r3, #1]
  217c08:	2201      	movs	r2, #1
  217c0a:	709a      	strb	r2, [r3, #2]
  217c0c:	2211      	movs	r2, #17
  217c0e:	70da      	strb	r2, [r3, #3]
  217c10:	2200      	movs	r2, #0
  217c12:	3305      	adds	r3, #5
  217c14:	f803 2c01 	strb.w	r2, [r3, #-1]
  217c18:	1b5c      	subs	r4, r3, r5
  217c1a:	2c64      	cmp	r4, #100	; 0x64
  217c1c:	4622      	mov	r2, r4
  217c1e:	bfa8      	it	ge
  217c20:	2264      	movge	r2, #100	; 0x64
  217c22:	4629      	mov	r1, r5
  217c24:	481e      	ldr	r0, [pc, #120]	; (217ca0 <application_init+0xf8>)
  217c26:	b292      	uxth	r2, r2
  217c28:	f5f5 fb78 	bl	d31c <wiced_get_debug_uart+0x67>
  217c2c:	b2a1      	uxth	r1, r4
  217c2e:	4628      	mov	r0, r5
  217c30:	f6bf f9b1 	bl	d6f96 <wiced_bt_dev_read_rssi+0x3>
  217c34:	2101      	movs	r1, #1
  217c36:	f240 30f9 	movw	r0, #1017	; 0x3f9
  217c3a:	f6c1 fdd1 	bl	d97e0 <wiced_bt_rfcomm_on_num_complete+0x5>
  217c3e:	4819      	ldr	r0, [pc, #100]	; (217ca4 <application_init+0xfc>)
  217c40:	f000 fa16 	bl	218070 <wiced_bt_spp_startup>
  217c44:	4817      	ldr	r0, [pc, #92]	; (217ca4 <application_init+0xfc>)
  217c46:	f000 fa13 	bl	218070 <wiced_bt_spp_startup>
  217c4a:	2191      	movs	r1, #145	; 0x91
  217c4c:	4816      	ldr	r0, [pc, #88]	; (217ca8 <application_init+0x100>)
  217c4e:	f6c0 fad7 	bl	d8200 <wiced_bt_gatt_disconnect+0xd>
  217c52:	2100      	movs	r1, #0
  217c54:	2001      	movs	r0, #1
  217c56:	f6c5 fafc 	bl	dd252 <wiced_bt_register_le_num_complete_cback+0x5>
  217c5a:	89f2      	ldrh	r2, [r6, #14]
  217c5c:	89b1      	ldrh	r1, [r6, #12]
  217c5e:	2002      	movs	r0, #2
  217c60:	f6bf f973 	bl	d6f4a <wiced_bt_dev_vendor_specific_command+0x3>
  217c64:	8ab2      	ldrh	r2, [r6, #20]
  217c66:	8a71      	ldrh	r1, [r6, #18]
  217c68:	2001      	movs	r0, #1
  217c6a:	f6bf f970 	bl	d6f4e <wiced_bt_dev_set_discoverability+0x3>
  217c6e:	2303      	movs	r3, #3
  217c70:	2200      	movs	r2, #0
  217c72:	490e      	ldr	r1, [pc, #56]	; (217cac <application_init+0x104>)
  217c74:	480e      	ldr	r0, [pc, #56]	; (217cb0 <application_init+0x108>)
  217c76:	f6c6 fd15 	bl	de6a4 <wiced_hal_rand_gen_num_array+0x7f>
  217c7a:	b930      	cbnz	r0, 217c8a <application_init+0xe2>
  217c7c:	2101      	movs	r1, #1
  217c7e:	480c      	ldr	r0, [pc, #48]	; (217cb0 <application_init+0x108>)
  217c80:	b003      	add	sp, #12
  217c82:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
  217c86:	f6c6 bd5d 	b.w	de744 <wiced_deinit_timer+0x19>
  217c8a:	b003      	add	sp, #12
  217c8c:	bdf0      	pop	{r4, r5, r6, r7, pc}
  217c8e:	bf00      	nop
  217c90:	00217e59 	.word	0x00217e59
  217c94:	00217e55 	.word	0x00217e55
  217c98:	002183fc 	.word	0x002183fc
  217c9c:	002182c4 	.word	0x002182c4
  217ca0:	00218391 	.word	0x00218391
  217ca4:	002183b4 	.word	0x002183b4
  217ca8:	00218220 	.word	0x00218220
  217cac:	00217ae1 	.word	0x00217ae1
  217cb0:	0021842c 	.word	0x0021842c

00217cb4 <app_management_callback>:
  217cb4:	b570      	push	{r4, r5, r6, lr}
  217cb6:	460d      	mov	r5, r1
  217cb8:	2100      	movs	r1, #0
  217cba:	4604      	mov	r4, r0
  217cbc:	4603      	mov	r3, r0
  217cbe:	b0a4      	sub	sp, #144	; 0x90
  217cc0:	4a41      	ldr	r2, [pc, #260]	; (217dc8 <app_management_callback+0x114>)
  217cc2:	4608      	mov	r0, r1
  217cc4:	f5f5 fcca 	bl	d65c <wiced_va_printf+0x1f7>
  217cc8:	2c13      	cmp	r4, #19
  217cca:	d879      	bhi.n	217dc0 <app_management_callback+0x10c>
  217ccc:	e8df f004 	tbb	[pc, r4]
  217cd0:	0e0c0c0a 	.word	0x0e0c0c0a
  217cd4:	78787815 	.word	0x78787815
  217cd8:	7878781a 	.word	0x7878781a
  217cdc:	7878780c 	.word	0x7878780c
  217ce0:	5d1f7878 	.word	0x5d1f7878
  217ce4:	f7ff ff60 	bl	217ba8 <application_init>
  217ce8:	2400      	movs	r4, #0
  217cea:	e027      	b.n	217d3c <app_management_callback+0x88>
  217cec:	4b37      	ldr	r3, [pc, #220]	; (217dcc <app_management_callback+0x118>)
  217cee:	2204      	movs	r2, #4
  217cf0:	2100      	movs	r1, #0
  217cf2:	6828      	ldr	r0, [r5, #0]
  217cf4:	f639 ffb8 	bl	51c68 <wiced_bt_dev_set_advanced_connection_params+0x3>
  217cf8:	e7f6      	b.n	217ce8 <app_management_callback+0x34>
  217cfa:	4629      	mov	r1, r5
  217cfc:	2000      	movs	r0, #0
  217cfe:	f6bf f974 	bl	d6fea <wiced_bt_dev_set_encryption+0x3>
  217d02:	e7f1      	b.n	217ce8 <app_management_callback+0x34>
  217d04:	2303      	movs	r3, #3
  217d06:	71ab      	strb	r3, [r5, #6]
  217d08:	2304      	movs	r3, #4
  217d0a:	722b      	strb	r3, [r5, #8]
  217d0c:	e7ec      	b.n	217ce8 <app_management_callback+0x34>
  217d0e:	2601      	movs	r6, #1
  217d10:	f10d 0302 	add.w	r3, sp, #2
  217d14:	aa01      	add	r2, sp, #4
  217d16:	218a      	movs	r1, #138	; 0x8a
  217d18:	4630      	mov	r0, r6
  217d1a:	f6c6 f887 	bl	dde2c <wiced_hal_delete_nvram+0x85>
  217d1e:	b180      	cbz	r0, 217d42 <app_management_callback+0x8e>
  217d20:	2206      	movs	r2, #6
  217d22:	4629      	mov	r1, r5
  217d24:	a801      	add	r0, sp, #4
  217d26:	f656 ffe5 	bl	6ecf4 <Aa864a000+0x2b61>
  217d2a:	4604      	mov	r4, r0
  217d2c:	b948      	cbnz	r0, 217d42 <app_management_callback+0x8e>
  217d2e:	f10d 0302 	add.w	r3, sp, #2
  217d32:	462a      	mov	r2, r5
  217d34:	218a      	movs	r1, #138	; 0x8a
  217d36:	4630      	mov	r0, r6
  217d38:	f6c5 ffba 	bl	ddcb0 <wiced_hal_sflash_detected+0x29>
  217d3c:	4620      	mov	r0, r4
  217d3e:	b024      	add	sp, #144	; 0x90
  217d40:	bd70      	pop	{r4, r5, r6, pc}
  217d42:	3601      	adds	r6, #1
  217d44:	b2f6      	uxtb	r6, r6
  217d46:	2e07      	cmp	r6, #7
  217d48:	d1e2      	bne.n	217d10 <app_management_callback+0x5c>
  217d4a:	2601      	movs	r6, #1
  217d4c:	f10d 0302 	add.w	r3, sp, #2
  217d50:	aa01      	add	r2, sp, #4
  217d52:	218a      	movs	r1, #138	; 0x8a
  217d54:	4630      	mov	r0, r6
  217d56:	f6c6 f869 	bl	dde2c <wiced_hal_delete_nvram+0x85>
  217d5a:	4604      	mov	r4, r0
  217d5c:	b970      	cbnz	r0, 217d7c <app_management_callback+0xc8>
  217d5e:	f10d 0302 	add.w	r3, sp, #2
  217d62:	462a      	mov	r2, r5
  217d64:	218a      	movs	r1, #138	; 0x8a
  217d66:	4630      	mov	r0, r6
  217d68:	f6c5 ffa2 	bl	ddcb0 <wiced_hal_sflash_detected+0x29>
  217d6c:	2e06      	cmp	r6, #6
  217d6e:	4621      	mov	r1, r4
  217d70:	bf0c      	ite	eq
  217d72:	2001      	moveq	r0, #1
  217d74:	1c70      	addne	r0, r6, #1
  217d76:	f6c6 f816 	bl	ddda6 <wiced_internal_read_nvram+0x2d>
  217d7a:	e7df      	b.n	217d3c <app_management_callback+0x88>
  217d7c:	3601      	adds	r6, #1
  217d7e:	b2f6      	uxtb	r6, r6
  217d80:	2e07      	cmp	r6, #7
  217d82:	d1e3      	bne.n	217d4c <app_management_callback+0x98>
  217d84:	f641 74ad 	movw	r4, #8109	; 0x1fad
  217d88:	e7d8      	b.n	217d3c <app_management_callback+0x88>
  217d8a:	2601      	movs	r6, #1
  217d8c:	f10d 0302 	add.w	r3, sp, #2
  217d90:	aa01      	add	r2, sp, #4
  217d92:	218a      	movs	r1, #138	; 0x8a
  217d94:	4630      	mov	r0, r6
  217d96:	f6c6 f849 	bl	dde2c <wiced_hal_delete_nvram+0x85>
  217d9a:	b160      	cbz	r0, 217db6 <app_management_callback+0x102>
  217d9c:	2206      	movs	r2, #6
  217d9e:	4629      	mov	r1, r5
  217da0:	a801      	add	r0, sp, #4
  217da2:	f656 ffa7 	bl	6ecf4 <Aa864a000+0x2b61>
  217da6:	4604      	mov	r4, r0
  217da8:	b928      	cbnz	r0, 217db6 <app_management_callback+0x102>
  217daa:	228a      	movs	r2, #138	; 0x8a
  217dac:	a901      	add	r1, sp, #4
  217dae:	4628      	mov	r0, r5
  217db0:	f61a f884 	bl	31ebc <bsc_OpExtended+0x2d91>
  217db4:	e7c2      	b.n	217d3c <app_management_callback+0x88>
  217db6:	3601      	adds	r6, #1
  217db8:	b2f6      	uxtb	r6, r6
  217dba:	2e07      	cmp	r6, #7
  217dbc:	d1e6      	bne.n	217d8c <app_management_callback+0xd8>
  217dbe:	e7e1      	b.n	217d84 <app_management_callback+0xd0>
  217dc0:	f641 74b8 	movw	r4, #8120	; 0x1fb8
  217dc4:	e7ba      	b.n	217d3c <app_management_callback+0x88>
  217dc6:	bf00      	nop
  217dc8:	00218397 	.word	0x00218397
  217dcc:	002183cc 	.word	0x002183cc

00217dd0 <app_send_data>:
  217dd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  217dd2:	4e1a      	ldr	r6, [pc, #104]	; (217e3c <app_send_data+0x6c>)
  217dd4:	4f1a      	ldr	r7, [pc, #104]	; (217e40 <app_send_data+0x70>)
  217dd6:	4635      	mov	r5, r6
  217dd8:	8830      	ldrh	r0, [r6, #0]
  217dda:	6934      	ldr	r4, [r6, #16]
  217ddc:	b150      	cbz	r0, 217df4 <app_send_data+0x24>
  217dde:	42bc      	cmp	r4, r7
  217de0:	d008      	beq.n	217df4 <app_send_data+0x24>
  217de2:	4b18      	ldr	r3, [pc, #96]	; (217e44 <app_send_data+0x74>)
  217de4:	429c      	cmp	r4, r3
  217de6:	bfcc      	ite	gt
  217de8:	1b3c      	subgt	r4, r7, r4
  217dea:	f240 34ef 	movwle	r4, #1007	; 0x3ef
  217dee:	f000 f985 	bl	2180fc <wiced_bt_spp_can_send_more_data>
  217df2:	b948      	cbnz	r0, 217e08 <app_send_data+0x38>
  217df4:	692a      	ldr	r2, [r5, #16]
  217df6:	4b14      	ldr	r3, [pc, #80]	; (217e48 <app_send_data+0x78>)
  217df8:	429a      	cmp	r2, r3
  217dfa:	dc19      	bgt.n	217e30 <app_send_data+0x60>
  217dfc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
  217e00:	2105      	movs	r1, #5
  217e02:	4812      	ldr	r0, [pc, #72]	; (217e4c <app_send_data+0x7c>)
  217e04:	f6c6 bc9e 	b.w	de744 <wiced_deinit_timer+0x19>
  217e08:	2300      	movs	r3, #0
  217e0a:	7c2a      	ldrb	r2, [r5, #16]
  217e0c:	4910      	ldr	r1, [pc, #64]	; (217e50 <app_send_data+0x80>)
  217e0e:	42a3      	cmp	r3, r4
  217e10:	db0a      	blt.n	217e28 <app_send_data+0x58>
  217e12:	4622      	mov	r2, r4
  217e14:	490e      	ldr	r1, [pc, #56]	; (217e50 <app_send_data+0x80>)
  217e16:	8828      	ldrh	r0, [r5, #0]
  217e18:	f000 f948 	bl	2180ac <wiced_bt_spp_send_session_data>
  217e1c:	2801      	cmp	r0, #1
  217e1e:	d1e9      	bne.n	217df4 <app_send_data+0x24>
  217e20:	692b      	ldr	r3, [r5, #16]
  217e22:	441c      	add	r4, r3
  217e24:	612c      	str	r4, [r5, #16]
  217e26:	e7d7      	b.n	217dd8 <app_send_data+0x8>
  217e28:	18d0      	adds	r0, r2, r3
  217e2a:	5458      	strb	r0, [r3, r1]
  217e2c:	3301      	adds	r3, #1
  217e2e:	e7ee      	b.n	217e0e <app_send_data+0x3e>
  217e30:	f7ff fea6 	bl	217b80 <clock_SystemTimeMicroseconds64>
  217e34:	2300      	movs	r3, #0
  217e36:	612b      	str	r3, [r5, #16]
  217e38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
  217e3a:	bf00      	nop
  217e3c:	002183e0 	.word	0x002183e0
  217e40:	000f4240 	.word	0x000f4240
  217e44:	000f3e50 	.word	0x000f3e50
  217e48:	000f423f 	.word	0x000f423f
  217e4c:	002183fc 	.word	0x002183fc
  217e50:	0021845c 	.word	0x0021845c

00217e54 <app_tx_ack_timeout>:
  217e54:	f7ff bfbc 	b.w	217dd0 <app_send_data>

00217e58 <app_interrupt_handler>:
  217e58:	b510      	push	{r4, lr}
  217e5a:	f7ff fe91 	bl	217b80 <clock_SystemTimeMicroseconds64>
  217e5e:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
  217e62:	2300      	movs	r3, #0
  217e64:	f661 ff74 	bl	79d50 <wiced_get_mpaf_trans_handle+0x751b>
  217e68:	4c07      	ldr	r4, [pc, #28]	; (217e88 <app_interrupt_handler+0x30>)
  217e6a:	6160      	str	r0, [r4, #20]
  217e6c:	201e      	movs	r0, #30
  217e6e:	f6c1 febc 	bl	d9bea <wiced_hal_gpio_clear_pin_interrupt_status+0x25>
  217e72:	b110      	cbz	r0, 217e7a <app_interrupt_handler+0x22>
  217e74:	201e      	movs	r0, #30
  217e76:	f6c1 fea5 	bl	d9bc4 <wiced_hal_gpio_configure_pin+0xa7>
  217e7a:	6923      	ldr	r3, [r4, #16]
  217e7c:	b91b      	cbnz	r3, 217e86 <app_interrupt_handler+0x2e>
  217e7e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  217e82:	f7ff bfa5 	b.w	217dd0 <app_send_data>
  217e86:	bd10      	pop	{r4, pc}
  217e88:	002183e0 	.word	0x002183e0

00217e8c <install_libs>:
  217e8c:	4770      	bx	lr

00217e8e <wiced_bt_app_init>:
  217e8e:	b508      	push	{r3, lr}
  217e90:	f000 f802 	bl	217e98 <wiced_bt_app_hal_init>
  217e94:	2000      	movs	r0, #0
  217e96:	bd08      	pop	{r3, pc}

00217e98 <wiced_bt_app_hal_init>:
  217e98:	b508      	push	{r3, lr}
  217e9a:	f5f6 fcc3 	bl	e824 <mia_isResetReasonPor+0xf>
  217e9e:	f5f6 fc39 	bl	e714 <gpio_configurePortPins+0xbb>
  217ea2:	2001      	movs	r0, #1
  217ea4:	f613 fb33 	bl	2b50e <mia_enableLhlInterrupt+0x5d>
  217ea8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  217eac:	2001      	movs	r0, #1
  217eae:	f613 baff 	b.w	2b4b0 <gpio_getPortInterruptStatus+0xbd>
	...

00217eb4 <spp_lib_get_scb_pointer>:
  217eb4:	b570      	push	{r4, r5, r6, lr}
  217eb6:	2400      	movs	r4, #0
  217eb8:	4b0c      	ldr	r3, [pc, #48]	; (217eec <spp_lib_get_scb_pointer+0x38>)
  217eba:	0162      	lsls	r2, r4, #5
  217ebc:	b970      	cbnz	r0, 217edc <spp_lib_get_scb_pointer+0x28>
  217ebe:	189d      	adds	r5, r3, r2
  217ec0:	88ae      	ldrh	r6, [r5, #4]
  217ec2:	428e      	cmp	r6, r1
  217ec4:	d103      	bne.n	217ece <spp_lib_get_scb_pointer+0x1a>
  217ec6:	1898      	adds	r0, r3, r2
  217ec8:	bd70      	pop	{r4, r5, r6, pc}
  217eca:	2401      	movs	r4, #1
  217ecc:	e7f5      	b.n	217eba <spp_lib_get_scb_pointer+0x6>
  217ece:	88ed      	ldrh	r5, [r5, #6]
  217ed0:	428d      	cmp	r5, r1
  217ed2:	d0f8      	beq.n	217ec6 <spp_lib_get_scb_pointer+0x12>
  217ed4:	2c00      	cmp	r4, #0
  217ed6:	d0f8      	beq.n	217eca <spp_lib_get_scb_pointer+0x16>
  217ed8:	2000      	movs	r0, #0
  217eda:	e7f5      	b.n	217ec8 <spp_lib_get_scb_pointer+0x14>
  217edc:	2801      	cmp	r0, #1
  217ede:	5c9d      	ldrb	r5, [r3, r2]
  217ee0:	d101      	bne.n	217ee6 <spp_lib_get_scb_pointer+0x32>
  217ee2:	2d01      	cmp	r5, #1
  217ee4:	e7f5      	b.n	217ed2 <spp_lib_get_scb_pointer+0x1e>
  217ee6:	2d00      	cmp	r5, #0
  217ee8:	d1f4      	bne.n	217ed4 <spp_lib_get_scb_pointer+0x20>
  217eea:	e7ec      	b.n	217ec6 <spp_lib_get_scb_pointer+0x12>
  217eec:	00218858 	.word	0x00218858

00217ef0 <spp_rfcomm_opened>:
  217ef0:	4603      	mov	r3, r0
  217ef2:	2202      	movs	r2, #2
  217ef4:	b570      	push	{r4, r5, r6, lr}
  217ef6:	f803 2b09 	strb.w	r2, [r3], #9
  217efa:	4604      	mov	r4, r0
  217efc:	2200      	movs	r2, #0
  217efe:	461d      	mov	r5, r3
  217f00:	4908      	ldr	r1, [pc, #32]	; (217f24 <spp_rfcomm_opened+0x34>)
  217f02:	f813 0b01 	ldrb.w	r0, [r3], #1
  217f06:	5450      	strb	r0, [r2, r1]
  217f08:	3201      	adds	r2, #1
  217f0a:	2a06      	cmp	r2, #6
  217f0c:	d1f9      	bne.n	217f02 <spp_rfcomm_opened+0x12>
  217f0e:	4906      	ldr	r1, [pc, #24]	; (217f28 <spp_rfcomm_opened+0x38>)
  217f10:	88e0      	ldrh	r0, [r4, #6]
  217f12:	f6c1 fb86 	bl	d9622 <wiced_bt_rfcomm_remove_connection+0x9>
  217f16:	69a3      	ldr	r3, [r4, #24]
  217f18:	4629      	mov	r1, r5
  217f1a:	88e0      	ldrh	r0, [r4, #6]
  217f1c:	685b      	ldr	r3, [r3, #4]
  217f1e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
  217f22:	4718      	bx	r3
  217f24:	00218850 	.word	0x00218850
  217f28:	00217f2d 	.word	0x00217f2d

00217f2c <spp_port_event_cback>:
  217f2c:	b573      	push	{r0, r1, r4, r5, r6, lr}
  217f2e:	4604      	mov	r4, r0
  217f30:	2000      	movs	r0, #0
  217f32:	460e      	mov	r6, r1
  217f34:	f7ff ffbe 	bl	217eb4 <spp_lib_get_scb_pointer>
  217f38:	4605      	mov	r5, r0
  217f3a:	b1b8      	cbz	r0, 217f6c <spp_port_event_cback+0x40>
  217f3c:	07e1      	lsls	r1, r4, #31
  217f3e:	d517      	bpl.n	217f70 <spp_port_event_cback+0x44>
  217f40:	a901      	add	r1, sp, #4
  217f42:	4630      	mov	r0, r6
  217f44:	f5f3 fd0a 	bl	b95c <PORT_ReadData+0xc5>
  217f48:	b990      	cbnz	r0, 217f70 <spp_port_event_cback+0x44>
  217f4a:	9b01      	ldr	r3, [sp, #4]
  217f4c:	b183      	cbz	r3, 217f70 <spp_port_event_cback+0x44>
  217f4e:	4810      	ldr	r0, [pc, #64]	; (217f90 <spp_port_event_cback+0x64>)
  217f50:	885a      	ldrh	r2, [r3, #2]
  217f52:	6801      	ldr	r1, [r0, #0]
  217f54:	4411      	add	r1, r2
  217f56:	6001      	str	r1, [r0, #0]
  217f58:	8899      	ldrh	r1, [r3, #4]
  217f5a:	69a8      	ldr	r0, [r5, #24]
  217f5c:	3108      	adds	r1, #8
  217f5e:	6944      	ldr	r4, [r0, #20]
  217f60:	4419      	add	r1, r3
  217f62:	4630      	mov	r0, r6
  217f64:	47a0      	blx	r4
  217f66:	9801      	ldr	r0, [sp, #4]
  217f68:	f657 fb9d 	bl	6f6a6 <GKI_get_buf_size+0x43>
  217f6c:	b002      	add	sp, #8
  217f6e:	bd70      	pop	{r4, r5, r6, pc}
  217f70:	03e2      	lsls	r2, r4, #15
  217f72:	bf42      	ittt	mi
  217f74:	f484 3300 	eormi.w	r3, r4, #131072	; 0x20000
  217f78:	f3c3 4340 	ubfxmi	r3, r3, #17, #1
  217f7c:	616b      	strmi	r3, [r5, #20]
  217f7e:	0763      	lsls	r3, r4, #29
  217f80:	bf48      	it	mi
  217f82:	2300      	movmi	r3, #0
  217f84:	f3c4 14c0 	ubfx	r4, r4, #7, #1
  217f88:	bf48      	it	mi
  217f8a:	616b      	strmi	r3, [r5, #20]
  217f8c:	61ec      	str	r4, [r5, #28]
  217f8e:	e7ed      	b.n	217f6c <spp_port_event_cback+0x40>
  217f90:	002183f8 	.word	0x002183f8

00217f94 <spp_rfcomm_start_server>:
  217f94:	b51f      	push	{r0, r1, r2, r3, r4, lr}
  217f96:	f64f 71ff 	movw	r1, #65535	; 0xffff
  217f9a:	2200      	movs	r2, #0
  217f9c:	8883      	ldrh	r3, [r0, #4]
  217f9e:	7002      	strb	r2, [r0, #0]
  217fa0:	428b      	cmp	r3, r1
  217fa2:	d103      	bne.n	217fac <spp_rfcomm_start_server+0x18>
  217fa4:	8082      	strh	r2, [r0, #4]
  217fa6:	b005      	add	sp, #20
  217fa8:	f85d fb04 	ldr.w	pc, [sp], #4
  217fac:	2b00      	cmp	r3, #0
  217fae:	d1fa      	bne.n	217fa6 <spp_rfcomm_start_server+0x12>
  217fb0:	6982      	ldr	r2, [r0, #24]
  217fb2:	3004      	adds	r0, #4
  217fb4:	8853      	ldrh	r3, [r2, #2]
  217fb6:	7811      	ldrb	r1, [r2, #0]
  217fb8:	4a05      	ldr	r2, [pc, #20]	; (217fd0 <spp_rfcomm_start_server+0x3c>)
  217fba:	9001      	str	r0, [sp, #4]
  217fbc:	9202      	str	r2, [sp, #8]
  217fbe:	4a05      	ldr	r2, [pc, #20]	; (217fd4 <spp_rfcomm_start_server+0x40>)
  217fc0:	f241 1001 	movw	r0, #4353	; 0x1101
  217fc4:	9200      	str	r2, [sp, #0]
  217fc6:	2201      	movs	r2, #1
  217fc8:	f6c1 fc50 	bl	d986c <wiced_bt_rfcomm_control_callback+0x3d>
  217fcc:	e7eb      	b.n	217fa6 <spp_rfcomm_start_server+0x12>
  217fce:	bf00      	nop
  217fd0:	00218019 	.word	0x00218019
  217fd4:	002183da 	.word	0x002183da

00217fd8 <spp_rfcomm_closed>:
  217fd8:	b570      	push	{r4, r5, r6, lr}
  217fda:	7803      	ldrb	r3, [r0, #0]
  217fdc:	4604      	mov	r4, r0
  217fde:	2b01      	cmp	r3, #1
  217fe0:	88c5      	ldrh	r5, [r0, #6]
  217fe2:	d003      	beq.n	217fec <spp_rfcomm_closed+0x14>
  217fe4:	6803      	ldr	r3, [r0, #0]
  217fe6:	f013 1fff 	tst.w	r3, #16711935	; 0xff00ff
  217fea:	d103      	bne.n	217ff4 <spp_rfcomm_closed+0x1c>
  217fec:	69a3      	ldr	r3, [r4, #24]
  217fee:	689b      	ldr	r3, [r3, #8]
  217ff0:	b103      	cbz	r3, 217ff4 <spp_rfcomm_closed+0x1c>
  217ff2:	4798      	blx	r3
  217ff4:	2206      	movs	r2, #6
  217ff6:	2100      	movs	r1, #0
  217ff8:	f104 0009 	add.w	r0, r4, #9
  217ffc:	f619 ff62 	bl	31ec4 <memcpy+0x7>
  218000:	2300      	movs	r3, #0
  218002:	4620      	mov	r0, r4
  218004:	7023      	strb	r3, [r4, #0]
  218006:	80e3      	strh	r3, [r4, #6]
  218008:	f7ff ffc4 	bl	217f94 <spp_rfcomm_start_server>
  21800c:	69a3      	ldr	r3, [r4, #24]
  21800e:	4628      	mov	r0, r5
  218010:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
  218014:	691b      	ldr	r3, [r3, #16]
  218016:	4718      	bx	r3

00218018 <spp_rfcomm_control_callback>:
  218018:	b573      	push	{r0, r1, r4, r5, r6, lr}
  21801a:	4606      	mov	r6, r0
  21801c:	2000      	movs	r0, #0
  21801e:	460d      	mov	r5, r1
  218020:	f7ff ff48 	bl	217eb4 <spp_lib_get_scb_pointer>
  218024:	4604      	mov	r4, r0
  218026:	b1f0      	cbz	r0, 218066 <spp_rfcomm_control_callback+0x4e>
  218028:	b136      	cbz	r6, 218038 <spp_rfcomm_control_callback+0x20>
  21802a:	88c3      	ldrh	r3, [r0, #6]
  21802c:	428b      	cmp	r3, r1
  21802e:	d11a      	bne.n	218066 <spp_rfcomm_control_callback+0x4e>
  218030:	4620      	mov	r0, r4
  218032:	f7ff ffd1 	bl	217fd8 <spp_rfcomm_closed>
  218036:	e016      	b.n	218066 <spp_rfcomm_control_callback+0x4e>
  218038:	7803      	ldrb	r3, [r0, #0]
  21803a:	2b03      	cmp	r3, #3
  21803c:	d0f8      	beq.n	218030 <spp_rfcomm_control_callback+0x18>
  21803e:	490b      	ldr	r1, [pc, #44]	; (21806c <spp_rfcomm_control_callback+0x54>)
  218040:	4628      	mov	r0, r5
  218042:	f6c1 faf2 	bl	d962a <wiced_bt_rfcomm_set_data_callback+0x3>
  218046:	7823      	ldrb	r3, [r4, #0]
  218048:	b953      	cbnz	r3, 218060 <spp_rfcomm_control_callback+0x48>
  21804a:	88a0      	ldrh	r0, [r4, #4]
  21804c:	70a3      	strb	r3, [r4, #2]
  21804e:	80e0      	strh	r0, [r4, #6]
  218050:	f10d 0206 	add.w	r2, sp, #6
  218054:	f104 0109 	add.w	r1, r4, #9
  218058:	f6c1 fb93 	bl	d9782 <wiced_bt_rfcomm_write_data+0x1>
  21805c:	2800      	cmp	r0, #0
  21805e:	d1e7      	bne.n	218030 <spp_rfcomm_control_callback+0x18>
  218060:	4620      	mov	r0, r4
  218062:	f7ff ff45 	bl	217ef0 <spp_rfcomm_opened>
  218066:	b002      	add	sp, #8
  218068:	bd70      	pop	{r4, r5, r6, pc}
  21806a:	bf00      	nop
  21806c:	0003ffff 	.word	0x0003ffff

00218070 <wiced_bt_spp_startup>:
  218070:	b538      	push	{r3, r4, r5, lr}
  218072:	4b0d      	ldr	r3, [pc, #52]	; (2180a8 <wiced_bt_spp_startup+0x38>)
  218074:	4605      	mov	r5, r0
  218076:	785c      	ldrb	r4, [r3, #1]
  218078:	b11c      	cbz	r4, 218082 <wiced_bt_spp_startup+0x12>
  21807a:	f893 2021 	ldrb.w	r2, [r3, #33]	; 0x21
  21807e:	b97a      	cbnz	r2, 2180a0 <wiced_bt_spp_startup+0x30>
  218080:	2401      	movs	r4, #1
  218082:	eb03 1444 	add.w	r4, r3, r4, lsl #5
  218086:	2220      	movs	r2, #32
  218088:	2100      	movs	r1, #0
  21808a:	4620      	mov	r0, r4
  21808c:	f619 ff1a 	bl	31ec4 <memcpy+0x7>
  218090:	2301      	movs	r3, #1
  218092:	4620      	mov	r0, r4
  218094:	7063      	strb	r3, [r4, #1]
  218096:	61a5      	str	r5, [r4, #24]
  218098:	f7ff ff7c 	bl	217f94 <spp_rfcomm_start_server>
  21809c:	2000      	movs	r0, #0
  21809e:	bd38      	pop	{r3, r4, r5, pc}
  2180a0:	f641 70a6 	movw	r0, #8102	; 0x1fa6
  2180a4:	e7fb      	b.n	21809e <wiced_bt_spp_startup+0x2e>
  2180a6:	bf00      	nop
  2180a8:	00218858 	.word	0x00218858

002180ac <wiced_bt_spp_send_session_data>:
  2180ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  2180ae:	4605      	mov	r5, r0
  2180b0:	2002      	movs	r0, #2
  2180b2:	460f      	mov	r7, r1
  2180b4:	4616      	mov	r6, r2
  2180b6:	f657 fab8 	bl	6f62a <GKI_getbuf+0x5b>
  2180ba:	4604      	mov	r4, r0
  2180bc:	b908      	cbnz	r0, 2180c2 <wiced_bt_spp_send_session_data+0x16>
  2180be:	2000      	movs	r0, #0
  2180c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
  2180c2:	2002      	movs	r0, #2
  2180c4:	f657 fca5 	bl	6fa12 <GKI_poolfreecount+0x19>
  2180c8:	2811      	cmp	r0, #17
  2180ca:	d9f8      	bls.n	2180be <wiced_bt_spp_send_session_data+0x12>
  2180cc:	2312      	movs	r3, #18
  2180ce:	4632      	mov	r2, r6
  2180d0:	80a3      	strh	r3, [r4, #4]
  2180d2:	4639      	mov	r1, r7
  2180d4:	f104 001a 	add.w	r0, r4, #26
  2180d8:	f619 fef0 	bl	31ebc <bsc_OpExtended+0x2d91>
  2180dc:	8066      	strh	r6, [r4, #2]
  2180de:	4621      	mov	r1, r4
  2180e0:	4628      	mov	r0, r5
  2180e2:	f5f3 fcb1 	bl	ba48 <PORT_Read+0xeb>
  2180e6:	4604      	mov	r4, r0
  2180e8:	b920      	cbnz	r0, 2180f4 <wiced_bt_spp_send_session_data+0x48>
  2180ea:	4629      	mov	r1, r5
  2180ec:	f7ff fee2 	bl	217eb4 <spp_lib_get_scb_pointer>
  2180f0:	b100      	cbz	r0, 2180f4 <wiced_bt_spp_send_session_data+0x48>
  2180f2:	69c4      	ldr	r4, [r0, #28]
  2180f4:	fab4 f084 	clz	r0, r4
  2180f8:	0940      	lsrs	r0, r0, #5
  2180fa:	e7e1      	b.n	2180c0 <wiced_bt_spp_send_session_data+0x14>

002180fc <wiced_bt_spp_can_send_more_data>:
  2180fc:	b538      	push	{r3, r4, r5, lr}
  2180fe:	4601      	mov	r1, r0
  218100:	2000      	movs	r0, #0
  218102:	f7ff fed7 	bl	217eb4 <spp_lib_get_scb_pointer>
  218106:	4604      	mov	r4, r0
  218108:	b180      	cbz	r0, 21812c <wiced_bt_spp_can_send_more_data+0x30>
  21810a:	2002      	movs	r0, #2
  21810c:	f657 fc74 	bl	6f9f8 <GKI_queue_is_empty+0x4b>
  218110:	4605      	mov	r5, r0
  218112:	2002      	movs	r0, #2
  218114:	f5f4 fe84 	bl	ce20 <wiced_free_pool_buf+0x2b>
  218118:	f3c0 004f 	ubfx	r0, r0, #1, #16
  21811c:	4285      	cmp	r5, r0
  21811e:	bf89      	itett	hi
  218120:	6960      	ldrhi	r0, [r4, #20]
  218122:	2000      	movls	r0, #0
  218124:	fab0 f080 	clzhi	r0, r0
  218128:	0940      	lsrhi	r0, r0, #5
  21812a:	b2c0      	uxtb	r0, r0
  21812c:	bd38      	pop	{r3, r4, r5, pc}
	...

00218130 <unbond>:
  218130:	280b      	cmp	r0, #11
  218132:	d111      	bne.n	218158 <unbond+0x28>
  218134:	4b12      	ldr	r3, [pc, #72]	; (218180 <unbond+0x50>)
  218136:	681a      	ldr	r2, [r3, #0]
  218138:	f422 027f 	bic.w	r2, r2, #16711680	; 0xff0000
  21813c:	601a      	str	r2, [r3, #0]
  21813e:	681a      	ldr	r2, [r3, #0]
  218140:	f442 0282 	orr.w	r2, r2, #4259840	; 0x410000
  218144:	601a      	str	r2, [r3, #0]
  218146:	69da      	ldr	r2, [r3, #28]
  218148:	f022 427f 	bic.w	r2, r2, #4278190080	; 0xff000000
  21814c:	61da      	str	r2, [r3, #28]
  21814e:	69da      	ldr	r2, [r3, #28]
  218150:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
  218154:	61da      	str	r2, [r3, #28]
  218156:	4770      	bx	lr
  218158:	281e      	cmp	r0, #30
  21815a:	d110      	bne.n	21817e <unbond+0x4e>
  21815c:	4b08      	ldr	r3, [pc, #32]	; (218180 <unbond+0x50>)
  21815e:	681a      	ldr	r2, [r3, #0]
  218160:	f022 427f 	bic.w	r2, r2, #4278190080	; 0xff000000
  218164:	601a      	str	r2, [r3, #0]
  218166:	681a      	ldr	r2, [r3, #0]
  218168:	f042 4282 	orr.w	r2, r2, #1090519040	; 0x41000000
  21816c:	601a      	str	r2, [r3, #0]
  21816e:	69da      	ldr	r2, [r3, #28]
  218170:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
  218174:	61da      	str	r2, [r3, #28]
  218176:	69da      	ldr	r2, [r3, #28]
  218178:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
  21817c:	61da      	str	r2, [r3, #28]
  21817e:	4770      	bx	lr
  218180:	0032006c 	.word	0x0032006c

00218184 <wiced_configure_swd_pins>:
  218184:	f1a0 32ff 	sub.w	r2, r0, #4294967295
  218188:	b538      	push	{r3, r4, r5, lr}
  21818a:	4253      	negs	r3, r2
  21818c:	eb43 0302 	adc.w	r3, r3, r2
  218190:	f1b1 3fff 	cmp.w	r1, #4294967295
  218194:	bf08      	it	eq
  218196:	f043 0301 	orreq.w	r3, r3, #1
  21819a:	4604      	mov	r4, r0
  21819c:	460d      	mov	r5, r1
  21819e:	b14b      	cbz	r3, 2181b4 <wiced_configure_swd_pins+0x30>
  2181a0:	4b1d      	ldr	r3, [pc, #116]	; (218218 <wiced_configure_swd_pins+0x94>)
  2181a2:	681a      	ldr	r2, [r3, #0]
  2181a4:	f422 72fc 	bic.w	r2, r2, #504	; 0x1f8
  2181a8:	601a      	str	r2, [r3, #0]
  2181aa:	681a      	ldr	r2, [r3, #0]
  2181ac:	f042 0240 	orr.w	r2, r2, #64	; 0x40
  2181b0:	601a      	str	r2, [r3, #0]
  2181b2:	bd38      	pop	{r3, r4, r5, pc}
  2181b4:	200b      	movs	r0, #11
  2181b6:	f7ff ffbb 	bl	218130 <unbond>
  2181ba:	201e      	movs	r0, #30
  2181bc:	f7ff ffb8 	bl	218130 <unbond>
  2181c0:	1ea3      	subs	r3, r4, #2
  2181c2:	b2db      	uxtb	r3, r3
  2181c4:	2b02      	cmp	r3, #2
  2181c6:	bf9f      	itttt	ls
  2181c8:	4b14      	ldrls	r3, [pc, #80]	; (21821c <wiced_configure_swd_pins+0x98>)
  2181ca:	f853 3024 	ldrls.w	r3, [r3, r4, lsl #2]
  2181ce:	681a      	ldrls	r2, [r3, #0]
  2181d0:	f422 62c0 	bicls.w	r2, r2, #1536	; 0x600
  2181d4:	bf98      	it	ls
  2181d6:	601a      	strls	r2, [r3, #0]
  2181d8:	1eab      	subs	r3, r5, #2
  2181da:	b2db      	uxtb	r3, r3
  2181dc:	2b02      	cmp	r3, #2
  2181de:	d80f      	bhi.n	218200 <wiced_configure_swd_pins+0x7c>
  2181e0:	4b0e      	ldr	r3, [pc, #56]	; (21821c <wiced_configure_swd_pins+0x98>)
  2181e2:	eb03 0385 	add.w	r3, r3, r5, lsl #2
  2181e6:	695b      	ldr	r3, [r3, #20]
  2181e8:	681a      	ldr	r2, [r3, #0]
  2181ea:	f422 62c0 	bic.w	r2, r2, #1536	; 0x600
  2181ee:	601a      	str	r2, [r3, #0]
  2181f0:	681a      	ldr	r2, [r3, #0]
  2181f2:	f022 0230 	bic.w	r2, r2, #48	; 0x30
  2181f6:	601a      	str	r2, [r3, #0]
  2181f8:	681a      	ldr	r2, [r3, #0]
  2181fa:	f042 0220 	orr.w	r2, r2, #32
  2181fe:	601a      	str	r2, [r3, #0]
  218200:	4b05      	ldr	r3, [pc, #20]	; (218218 <wiced_configure_swd_pins+0x94>)
  218202:	00e4      	lsls	r4, r4, #3
  218204:	681a      	ldr	r2, [r3, #0]
  218206:	ea44 1585 	orr.w	r5, r4, r5, lsl #6
  21820a:	f422 72fc 	bic.w	r2, r2, #504	; 0x1f8
  21820e:	601a      	str	r2, [r3, #0]
  218210:	681a      	ldr	r2, [r3, #0]
  218212:	4315      	orrs	r5, r2
  218214:	601d      	str	r5, [r3, #0]
  218216:	bd38      	pop	{r3, r4, r5, pc}
  218218:	0032014c 	.word	0x0032014c
  21821c:	0021833c 	.word	0x0021833c

Disassembly of section .setup:

00218898 <spar_crt_setup>:
  218898:	480b      	ldr	r0, [pc, #44]	; (2188c8 <spar_iram_bss_end+0x30>)
  21889a:	490c      	ldr	r1, [pc, #48]	; (2188cc <spar_iram_bss_end+0x34>)
  21889c:	b508      	push	{r3, lr}
  21889e:	4288      	cmp	r0, r1
  2188a0:	d002      	beq.n	2188a8 <spar_crt_setup+0x10>
  2188a2:	4a0b      	ldr	r2, [pc, #44]	; (2188d0 <spar_iram_bss_end+0x38>)
  2188a4:	f619 fb0a 	bl	31ebc <bsc_OpExtended+0x2d91>
  2188a8:	4a0a      	ldr	r2, [pc, #40]	; (2188d4 <spar_iram_bss_end+0x3c>)
  2188aa:	2100      	movs	r1, #0
  2188ac:	480a      	ldr	r0, [pc, #40]	; (2188d8 <spar_iram_bss_end+0x40>)
  2188ae:	f619 fb09 	bl	31ec4 <memcpy+0x7>
  2188b2:	f7ff faeb 	bl	217e8c <install_libs>
  2188b6:	4b09      	ldr	r3, [pc, #36]	; (2188dc <spar_iram_bss_end+0x44>)
  2188b8:	4a09      	ldr	r2, [pc, #36]	; (2188e0 <spar_iram_bss_end+0x48>)
  2188ba:	f023 030f 	bic.w	r3, r3, #15
  2188be:	6013      	str	r3, [r2, #0]
  2188c0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  2188c4:	f000 b80e 	b.w	2188e4 <application_setup>
  2188c8:	002183b4 	.word	0x002183b4
  2188cc:	002183b4 	.word	0x002183b4
  2188d0:	0000002c 	.word	0x0000002c
  2188d4:	000004b8 	.word	0x000004b8
  2188d8:	002183e0 	.word	0x002183e0
  2188dc:	00218c98 	.word	0x00218c98
  2188e0:	0020241c 	.word	0x0020241c

002188e4 <application_setup>:
  2188e4:	f04f 31ff 	mov.w	r1, #4294967295
  2188e8:	b508      	push	{r3, lr}
  2188ea:	4608      	mov	r0, r1
  2188ec:	f7ff fc4a 	bl	218184 <wiced_configure_swd_pins>
  2188f0:	4b01      	ldr	r3, [pc, #4]	; (2188f8 <application_setup+0x14>)
  2188f2:	4a02      	ldr	r2, [pc, #8]	; (2188fc <application_setup+0x18>)
  2188f4:	601a      	str	r2, [r3, #0]
  2188f6:	bd08      	pop	{r3, pc}
  2188f8:	00201d54 	.word	0x00201d54
  2188fc:	00217a39 	.word	0x00217a39
