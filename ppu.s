;
; File generated by cc65 v 2.17 - Git 60b9ea3
;
	.fopt		compiler,"cc65 v 2.17 - Git 60b9ea3"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.import		_UnRLE
	.export		_DrawBackgroundRLE
	.export		_LoadPalette
	.export		__WritePPU
	.export		_ResetScroll
	.export		_EnablePPU
	.export		__p_count
	.export		_ppu_addr
	.export		_ppu_data
	.export		_ppu_data_size

.segment	"BSS"

.segment	"ZEROPAGE"
__p_count:
	.res	1,$00
_ppu_addr:
	.res	2,$00
_ppu_data:
	.res	2,$00
_ppu_data_size:
	.res	1,$00

; ---------------------------------------------------------------
; void __near__ __fastcall__ DrawBackgroundRLE (__near__ const unsigned char *, const unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DrawBackgroundRLE: near

.segment	"CODE"

;
; void __fastcall__ DrawBackgroundRLE(const uint8_t* nametable, const uint8_t table_num) {
;
	jsr     pusha
;
; if( table_num == 0 ) {
;
	ldy     #$00
	lda     (sp),y
	bne     L004E
;
; PPU_ADDRESS = (uint8_t) ((PPU_NAMETABLE_0 + NAMETABLE_OFFSET) >> 8);  // right shift to write only hi-byte
;
	lda     #$20
	sta     $2006
;
; else if( table_num == 1 ) {
;
	jmp     L004F
L004E:	lda     (sp),y
	cmp     #$01
	bne     L0020
;
; PPU_ADDRESS = (uint8_t) ((PPU_NAMETABLE_1 + NAMETABLE_OFFSET) >> 8);  // right shift to write only hi-byte
;
	lda     #$24
	sta     $2006
;
; PPU_ADDRESS = (uint8_t) (PPU_NAMETABLE_1 + NAMETABLE_OFFSET);      // now write lo-byte        
;
	lda     #$20
L004F:	sta     $2006
;
; UnRLE(nametable);
;
	ldy     #$02
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _UnRLE
;
; }
;
L0020:	jmp     incsp3

.endproc

; ---------------------------------------------------------------
; void __near__ __fastcall__ LoadPalette (__near__ const unsigned char *, const unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_LoadPalette: near

.segment	"CODE"

;
; void __fastcall__ LoadPalette(const uint8_t* palette, const uint8_t pal_size) {    
;
	jsr     pusha
;
; ppu_addr = PPU_PALETTE; // 0x3f00: palette memory
;
	ldx     #$3F
	lda     #$00
	sta     _ppu_addr
	stx     _ppu_addr+1
;
; ppu_data = palette; 
;
	ldy     #$02
	lda     (sp),y
	sta     _ppu_data+1
	dey
	lda     (sp),y
	sta     _ppu_data
;
; ppu_data_size = pal_size;
;
	dey
	lda     (sp),y
	sta     _ppu_data_size
;
; _WritePPU();
;
	jsr     __WritePPU
;
; }
;
	jmp     incsp3

.endproc

; ---------------------------------------------------------------
; void __near__ _WritePPU (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__WritePPU: near

.segment	"CODE"

;
; PPU_ADDRESS = (uint8_t) (ppu_addr >> 8);  // right shift to write only hi-byte
;
	lda     _ppu_addr+1
	sta     $2006
;
; PPU_ADDRESS = (uint8_t) (ppu_addr);  // now write lo byte
;
	lda     _ppu_addr
	sta     $2006
;
; for(_p_count = 0; _p_count < ppu_data_size; ++_p_count) {
;
	lda     #$00
	sta     __p_count
L0051:	lda     __p_count
	cmp     _ppu_data_size
	bcs     L000D
;
; PPU_DATA = ppu_data[_p_count];
;
	lda     _ppu_data
	ldx     _ppu_data+1
	ldy     __p_count
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	sta     $2007
;
; for(_p_count = 0; _p_count < ppu_data_size; ++_p_count) {
;
	inc     __p_count
	jmp     L0051
;
; }
;
L000D:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ ResetScroll (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ResetScroll: near

.segment	"CODE"

;
; SCROLL = 0x00; // horizontal
;
	lda     #$00
	sta     $2005
;
; SCROLL = 0x00; // vertical
;
	sta     $2005
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ EnablePPU (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_EnablePPU: near

.segment	"CODE"

;
; PPUCTRL_SPATTERN_0;  // sprites use pattern table 0
;
	lda     #$90
	sta     $2000
;
; PPUMASK_L8_SSHOW;  // show sprites in left 8 pixels
;
	lda     #$1E
	sta     $2001
;
; } 
;
	rts

.endproc

