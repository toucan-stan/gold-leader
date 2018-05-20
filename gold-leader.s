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
	.forceimport	__STARTUP__
	.export		_PALETTES
	.import		_WaitFrame
	.import		_UpdateInput
	.importzp	_JoyPad1
	.importzp	_PrevJoyPad1
	.import		_UnRLE
	.export		_nametable_0
	.export		_nametable_1
	.export		_i
	.export		_j
	.export		_new_laser_pos
	.export		_row
	.export		_col
	.export		_h_scroll
	.export		_attr_offset
	.export		_curr_sprite
	.export		_laser_count
	.export		_ppu_addr
	.export		_ppu_data
	.export		_ppu_data_size
	.export		_ship_level
	.export		_ship_bank_up
	.export		_ship_bank_down
	.export		_player
	.export		_lasers
	.export		_oam_sprites
	.export		_DrawBackgroundRLE
	.export		_DrawBackground
	.export		_WritePPU
	.export		_ResetScroll
	.export		_EnablePPU
	.export		_WriteMetaSpriteToOAM
	.export		_WriteSpriteToOAM
	.export		_CheckOffscreenLasers
	.export		_AddLaser
	.export		_main

.segment	"RODATA"

_PALETTES:
	.byte	$0F
	.byte	$12
	.byte	$16
	.byte	$14
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$0F
	.byte	$20
	.byte	$12
	.byte	$10
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_nametable_0:
	.byte	$05
	.byte	$00
	.byte	$05
	.byte	$26
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$03
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$09
	.byte	$03
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$05
	.byte	$03
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$0D
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$08
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$1B
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$08
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$0A
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$18
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$0A
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$20
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$02
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$20
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$06
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$04
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$03
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$0E
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$13
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$18
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$09
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$07
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$23
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$04
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$2D
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$12
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$10
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$06
	.byte	$04
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$1F
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$08
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$06
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$02
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$35
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$31
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$04
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$09
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$16
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$17
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$09
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$05
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$0F
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$24
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$0A
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$02
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$73
	.byte	$00
	.byte	$05
	.byte	$00
_nametable_1:
	.byte	$05
	.byte	$00
	.byte	$05
	.byte	$26
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$03
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$09
	.byte	$03
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$05
	.byte	$03
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$0D
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$08
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$1B
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$08
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$0A
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$18
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$0A
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$20
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$02
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$20
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$06
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$04
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$03
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$0E
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$13
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$18
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$09
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$07
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$23
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$04
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$2D
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$12
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$10
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$06
	.byte	$04
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$1F
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$08
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$06
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$02
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$35
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$31
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$04
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$09
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$16
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$11
	.byte	$04
	.byte	$00
	.byte	$05
	.byte	$17
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$09
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$05
	.byte	$02
	.byte	$00
	.byte	$05
	.byte	$0F
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$24
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$0A
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$02
	.byte	$01
	.byte	$00
	.byte	$05
	.byte	$73
	.byte	$00
	.byte	$05
	.byte	$00

.segment	"BSS"

.segment	"ZEROPAGE"
_i:
	.res	1,$00
_j:
	.res	1,$00
_new_laser_pos:
	.res	1,$00
_row:
	.res	1,$00
_col:
	.res	1,$00
_h_scroll:
	.res	1,$00
_attr_offset:
	.res	1,$00
_curr_sprite:
	.res	1,$00
_laser_count:
	.res	1,$00
_ppu_addr:
	.res	2,$00
_ppu_data:
	.res	2,$00
_ppu_data_size:
	.res	1,$00
_ship_level:
	.res	6,$00
_ship_bank_up:
	.res	6,$00
_ship_bank_down:
	.res	6,$00
_player:
	.res	6,$00
_lasers:
	.res	20,$00
.segment	"OAM"
_oam_sprites:
	.res	256,$00

; ---------------------------------------------------------------
; void __near__ DrawBackgroundRLE (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DrawBackgroundRLE: near

.segment	"CODE"

;
; PPU_ADDRESS = (uint8_t) ((PPU_NAMETABLE_0 + NAMETABLE_OFFSET) >> 8);  // right shift to write only hi-byte
;
	lda     #$20
	sta     $2006
;
; PPU_ADDRESS = (uint8_t) (PPU_NAMETABLE_0 + NAMETABLE_OFFSET);  // now write lo ebyte
;
	sta     $2006
;
; UnRLE(nametable_0);
;
	lda     #<(_nametable_0)
	ldx     #>(_nametable_0)
	jsr     _UnRLE
;
; PPU_ADDRESS = (uint8_t) ((PPU_NAMETABLE_1 + NAMETABLE_OFFSET) >> 8);  // right shift to write only hi-byte
;
	lda     #$24
	sta     $2006
;
; PPU_ADDRESS = (uint8_t) (PPU_NAMETABLE_1 + NAMETABLE_OFFSET);  // now write lo ebyte
;
	lda     #$20
	sta     $2006
;
; UnRLE(nametable_1);
;
	lda     #<(_nametable_1)
	ldx     #>(_nametable_1)
	jmp     _UnRLE

.endproc

; ---------------------------------------------------------------
; void __near__ DrawBackground (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DrawBackground: near

.segment	"CODE"

;
; PPU_ADDRESS = (uint8_t) ((PPU_NAMETABLE_0 + NAMETABLE_OFFSET) >> 8);  // right shift to write only hi-byte
;
	lda     #$20
	sta     $2006
;
; PPU_ADDRESS = (uint8_t) (PPU_NAMETABLE_0 + NAMETABLE_OFFSET);  // now write lo byte
;
	sta     $2006
;
; PPU_DATA = CORNER_TL;
;
	lda     #$04
	sta     $2007
;
; for(i = 0; i < NUM_COLS - 2; ++i) { 
;
	lda     #$00
	sta     _i
L038D:	lda     _i
	cmp     #$1E
	bcs     L038E
;
; PPU_DATA = EDGE_TOP;
;
	lda     #$13
	sta     $2007
;
; for(i = 0; i < NUM_COLS - 2; ++i) { 
;
	inc     _i
	jmp     L038D
;
; PPU_DATA = CORNER_TR;
;
L038E:	lda     #$01
	sta     $2007
;
; for(i = 0; i < NUM_ROWS - 2; ++i) {
;
	lda     #$00
	sta     _i
L038F:	lda     _i
	cmp     #$1A
	bcs     L0392
;
; PPU_DATA = EDGE_LEFT;
;
	lda     #$12
	sta     $2007
;
; for(j = 0; j < NUM_COLS - 2; ++j ) {
;
	lda     #$00
	sta     _j
L0390:	lda     _j
	cmp     #$1E
	bcs     L0391
;
; PPU_DATA = BLANK_TILE;
;
	lda     #$00
	sta     $2007
;
; for(j = 0; j < NUM_COLS - 2; ++j ) {
;
	inc     _j
	jmp     L0390
;
; PPU_DATA = EDGE_RIGHT;
;
L0391:	lda     #$02
	sta     $2007
;
; for(i = 0; i < NUM_ROWS - 2; ++i) {
;
	inc     _i
	jmp     L038F
;
; PPU_DATA = CORNER_BL;
;
L0392:	lda     #$10
	sta     $2007
;
; for(i = 0; i < NUM_COLS - 2; ++i) { 
;
	lda     #$00
	sta     _i
L0393:	lda     _i
	cmp     #$1E
	bcs     L0394
;
; PPU_DATA = EDGE_BOTTOM;
;
	lda     #$03
	sta     $2007
;
; for(i = 0; i < NUM_COLS - 2; ++i) { 
;
	inc     _i
	jmp     L0393
;
; PPU_DATA = CORNER_BR;
;
L0394:	lda     #$14
	sta     $2007
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ WritePPU (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_WritePPU: near

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
; for(i = 0; i < ppu_data_size; ++i){
;
	lda     #$00
	sta     _i
L0396:	lda     _i
	cmp     _ppu_data_size
	bcs     L0243
;
; PPU_DATA = ppu_data[i];
;
	lda     _ppu_data
	ldx     _ppu_data+1
	ldy     _i
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	sta     $2007
;
; for(i = 0; i < ppu_data_size; ++i){
;
	inc     _i
	jmp     L0396
;
; }
;
L0243:	rts

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

; ---------------------------------------------------------------
; void __near__ WriteMetaSpriteToOAM (__near__ struct metasprite *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_WriteMetaSpriteToOAM: near

.segment	"CODE"

;
; void WriteMetaSpriteToOAM(metasprite_t* mspr) {
;
	jsr     pushax
;
; for( i = 0; i < (player.num_v_sprites * player.num_h_sprites); ++i ) {
;
	lda     #$00
	sta     _i
L039A:	lda     _i
	jsr     pusha0
	lda     _player+3
	jsr     pusha0
	lda     _player+2
	jsr     tosumula0
	jsr     tosicmp
	bcc     L039B
;
; }
;
	jmp     incsp2
;
; row = i / player.num_h_sprites;
;
L039B:	lda     _i
	jsr     pusha0
	lda     _player+2
	jsr     tosudiva0
	sta     _row
;
; col = i % player.num_h_sprites;
;
	lda     _i
	jsr     pusha0
	lda     _player+2
	jsr     tosumoda0
	sta     _col
;
; oam_sprites[curr_sprite].y = mspr->top_y + (SPRITE_HEIGHT * row);
;
	ldx     #$00
	lda     _curr_sprite
	jsr     aslax2
	clc
	adc     #<(_oam_sprites)
	sta     sreg
	txa
	adc     #>(_oam_sprites)
	sta     sreg+1
	ldy     #$01
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	iny
	lda     (ptr1),y
	sta     ptr1
	lda     _row
	asl     a
	asl     a
	asl     a
	clc
	adc     ptr1
	dey
	sta     (sreg),y
;
; oam_sprites[curr_sprite].tile_idx = mspr->sprite_offsets[i];
;
	ldx     #$00
	lda     _curr_sprite
	jsr     aslax2
	clc
	adc     #<(_oam_sprites)
	tay
	txa
	adc     #>(_oam_sprites)
	tax
	tya
	jsr     pushax
	ldy     #$03
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$05
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	ldy     _i
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	ldy     #$01
	jsr     staspidx
;
; oam_sprites[curr_sprite].x = mspr->left_x + (SPRITE_WIDTH * col);
;
	ldx     #$00
	lda     _curr_sprite
	jsr     aslax2
	clc
	adc     #<(_oam_sprites)
	sta     sreg
	txa
	adc     #>(_oam_sprites)
	sta     sreg+1
	ldy     #$01
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     (ptr1),y
	sta     ptr1
	lda     _col
	asl     a
	asl     a
	asl     a
	clc
	adc     ptr1
	ldy     #$03
	sta     (sreg),y
;
; oam_sprites[curr_sprite].attr = 0x00;
;
	ldx     #$00
	lda     _curr_sprite
	jsr     aslax2
	clc
	adc     #<(_oam_sprites)
	sta     ptr1
	txa
	adc     #>(_oam_sprites)
	sta     ptr1+1
	lda     #$00
	dey
	sta     (ptr1),y
;
; ++curr_sprite;
;
	inc     _curr_sprite
;
; for( i = 0; i < (player.num_v_sprites * player.num_h_sprites); ++i ) {
;
	inc     _i
	jmp     L039A

.endproc

; ---------------------------------------------------------------
; void __near__ WriteSpriteToOAM (__near__ struct sprite *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_WriteSpriteToOAM: near

.segment	"CODE"

;
; void WriteSpriteToOAM(sprite_t* spr) {
;
	jsr     pushax
;
; oam_sprites[curr_sprite].y = spr->y;
;
	ldx     #$00
	lda     _curr_sprite
	jsr     aslax2
	clc
	adc     #<(_oam_sprites)
	tay
	txa
	adc     #>(_oam_sprites)
	tax
	tya
	jsr     pushax
	ldy     #$03
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$00
	lda     (ptr1),y
	jsr     staspidx
;
; oam_sprites[curr_sprite].tile_idx = spr->tile_idx;
;
	ldx     #$00
	lda     _curr_sprite
	jsr     aslax2
	clc
	adc     #<(_oam_sprites)
	tay
	txa
	adc     #>(_oam_sprites)
	tax
	tya
	jsr     pushax
	ldy     #$03
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	dey
	lda     (ptr1),y
	jsr     staspidx
;
; oam_sprites[curr_sprite].x = spr->x;
;
	ldx     #$00
	lda     _curr_sprite
	jsr     aslax2
	clc
	adc     #<(_oam_sprites)
	tay
	txa
	adc     #>(_oam_sprites)
	tax
	tya
	jsr     pushax
	ldy     #$03
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	iny
	lda     (ptr1),y
	jsr     staspidx
;
; oam_sprites[curr_sprite].attr = 0x00;
;
	ldx     #$00
	lda     _curr_sprite
	jsr     aslax2
	clc
	adc     #<(_oam_sprites)
	sta     ptr1
	txa
	adc     #>(_oam_sprites)
	sta     ptr1+1
	lda     #$00
	ldy     #$02
	sta     (ptr1),y
;
; ++curr_sprite;
;
	inc     _curr_sprite
;
; }
;
	jmp     incsp2

.endproc

; ---------------------------------------------------------------
; int __near__ CheckOffscreenLasers (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CheckOffscreenLasers: near

.segment	"CODE"

;
; int offscreen_lasers = 0;
;
	jsr     push0
;
; for(i = 0; i < MAX_LASERS; ++i ) {
;
	sta     _i
L039D:	lda     _i
	cmp     #$05
	jcs     L028B
;
; if( lasers[i].y < MAX_Y) {
;
	ldx     #$00
	lda     _i
	jsr     aslax2
	sta     ptr1
	txa
	clc
	adc     #>(_lasers)
	sta     ptr1+1
	ldy     #<(_lasers)
	lda     (ptr1),y
	cmp     #$E7
	jcs     L03A1
;
; new_laser_pos = lasers[i].x + LASER_SPEED;
;
	ldx     #$00
	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	clc
	adc     #$08
	sta     _new_laser_pos
;
; if( lasers[i].x > new_laser_pos || lasers[i].x >= OFFSCREEN_X ) {
;
	ldx     #$00
	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	ldx     #$00
	lda     (ptr1),y
	sec
	sbc     _new_laser_pos
	sta     tmp1
	lda     tmp1
	beq     L039E
	bcs     L03A2
L039E:	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     (ptr1),y
	cmp     #$F9
	bcs     L039F
	ldx     #$00
	jmp     L03A0
;
; lasers[i].y = MAX_Y; // offscreen
;
L039F:	ldx     #$00
L03A2:	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     #$E7
	ldy     #$00
	sta     (ptr1),y
;
; ++offscreen_lasers;
;
	ldx     #$00
	lda     #$01
	jsr     addeq0sp
;
; else {
;
	jmp     L03A1
;
; lasers[i].x = new_laser_pos;
;
L03A0:	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     _new_laser_pos
	sta     (ptr1),y
;
; for(i = 0; i < MAX_LASERS; ++i ) {
;
L03A1:	inc     _i
	jmp     L039D
;
; return offscreen_lasers;
;
L028B:	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
;
; }
;
	jmp     incsp2

.endproc

; ---------------------------------------------------------------
; void __near__ AddLaser (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_AddLaser: near

.segment	"CODE"

;
; if(laser_count < MAX_LASERS) {
;
	lda     _laser_count
	cmp     #$05
	bcs     L02AD
;
; i = 0;
;
	ldx     #$00
	stx     _i
;
; while( i < MAX_LASERS ) {
;
	jmp     L03A7
;
; if(lasers[i].y >= MAX_Y) {
;
L03A5:	lda     _i
	jsr     aslax2
	sta     ptr1
	txa
	clc
	adc     #>(_lasers)
	sta     ptr1+1
	ldy     #<(_lasers)
	lda     (ptr1),y
	cmp     #$E7
	bcc     L03A6
;
; lasers[i].x = player.left_x + player.num_h_sprites + SPRITE_WIDTH;
;
	ldx     #$00
	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     _player
	clc
	adc     _player+2
	bcc     L03A4
	clc
L03A4:	adc     #$08
	ldy     #$03
	sta     (ptr1),y
;
; lasers[i].y = player.top_y;
;
	ldx     #$00
	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     _player+1
	ldy     #$00
	sta     (ptr1),y
;
; ++laser_count;
;
	inc     _laser_count
;
; break;
;
	rts
;
; ++i;
;
L03A6:	inc     _i
;
; while( i < MAX_LASERS ) {
;
	ldx     #$00
L03A7:	lda     _i
	cmp     #$05
	bcc     L03A5
;
; }
;
L02AD:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; ppu_addr = PPU_PALETTE; // 0x3f00: palette memory
;
	ldx     #$3F
	lda     #$00
	sta     _ppu_addr
	stx     _ppu_addr+1
;
; ppu_data = PALETTES; 
;
	lda     #<(_PALETTES)
	sta     _ppu_data
	lda     #>(_PALETTES)
	sta     _ppu_data+1
;
; ppu_data_size = sizeof(PALETTES);
;
	lda     #$20
	sta     _ppu_data_size
;
; WritePPU();
;
	jsr     _WritePPU
;
; DrawBackgroundRLE();
;
	jsr     _DrawBackgroundRLE
;
; h_scroll = 0;
;
	lda     #$00
	sta     _h_scroll
;
; curr_sprite = 0;
;
	sta     _curr_sprite
;
; ship_level[0] = 0x00;
;
	sta     _ship_level
;
; ship_level[1] = 0x01;
;
	lda     #$01
	sta     _ship_level+1
;
; ship_level[2] = 0x02;
;
	lda     #$02
	sta     _ship_level+2
;
; ship_level[3] = 0x10;
;
	lda     #$10
	sta     _ship_level+3
;
; ship_level[4] = 0x11;
;
	lda     #$11
	sta     _ship_level+4
;
; ship_level[5] = 0x12;
;
	lda     #$12
	sta     _ship_level+5
;
; ship_bank_up[0] = 0x03;
;
	lda     #$03
	sta     _ship_bank_up
;
; ship_bank_up[1] = 0x04;
;
	lda     #$04
	sta     _ship_bank_up+1
;
; ship_bank_up[2] = 0x05;
;
	lda     #$05
	sta     _ship_bank_up+2
;
; ship_bank_up[3] = 0x13;
;
	lda     #$13
	sta     _ship_bank_up+3
;
; ship_bank_up[4] = 0x14;
;
	lda     #$14
	sta     _ship_bank_up+4
;
; ship_bank_up[5] = 0x15;
;
	lda     #$15
	sta     _ship_bank_up+5
;
; ship_bank_down[0] = 0x06;
;
	lda     #$06
	sta     _ship_bank_down
;
; ship_bank_down[1] = 0x07;
;
	lda     #$07
	sta     _ship_bank_down+1
;
; ship_bank_down[2] = 0x08;
;
	lda     #$08
	sta     _ship_bank_down+2
;
; ship_bank_down[3] = 0x16;
;
	lda     #$16
	sta     _ship_bank_down+3
;
; ship_bank_down[4] = 0x17;
;
	lda     #$17
	sta     _ship_bank_down+4
;
; ship_bank_down[5] = 0x18;
;
	lda     #$18
	sta     _ship_bank_down+5
;
; player.left_x =  (MIN_X + SPRITE_WIDTH * 2);
;
	lda     #$10
	sta     _player
;
; player.top_y = (MAX_Y / 2 - SPRITE_HEIGHT / 2);
;
	lda     #$6F
	sta     _player+1
;
; player.num_h_sprites = SHIP_SPRITE_HOR_TILES;
;
	lda     #$03
	sta     _player+2
;
; player.num_v_sprites = SHIP_SPRITE_VERT_TILES;
;
	lda     #$02
	sta     _player+3
;
; player.sprite_offsets = ship_level;
;
	lda     #<(_ship_level)
	sta     _player+4
	lda     #>(_ship_level)
	sta     _player+4+1
;
; WriteMetaSpriteToOAM(&player); // write player sprite to OAM
;
	lda     #<(_player)
	ldx     #>(_player)
	jsr     _WriteMetaSpriteToOAM
;
; laser_count = 0;
;
	lda     #$00
	sta     _laser_count
;
; for(i = 0; i < MAX_LASERS; ++i) {
;
	sta     _i
L03B0:	lda     _i
	cmp     #$05
	bcs     L0311
;
; lasers[i].y = 0xff; // offscreen
;
	ldx     #$00
	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     #$FF
	ldy     #$00
	sta     (ptr1),y
;
; lasers[i].tile_idx = LASER_SPRITE;
;
	ldx     #$00
	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     #$09
	iny
	sta     (ptr1),y
;
; for(i = 0; i < MAX_LASERS; ++i) {
;
	inc     _i
	jmp     L03B0
;
; ResetScroll();
;
L0311:	jsr     _ResetScroll
;
; EnablePPU();
;
	jsr     _EnablePPU
;
; curr_sprite = 0;
;
L03B1:	lda     #$00
	sta     _curr_sprite
;
; WaitFrame();
;
	jsr     _WaitFrame
;
; curr_sprite = 0;
;
	lda     #$00
	sta     _curr_sprite
;
; h_scroll += 1;
;
	inc     _h_scroll
;
; SCROLL = h_scroll; // horizontal
;
	lda     _h_scroll
	sta     $2005
;
; SCROLL = 0x0;
;
	lda     #$00
	sta     $2005
;
; UpdateInput();
;
	jsr     _UpdateInput
;
; if( (JoyPad1 & BUTTON_UP) && player.sprite_offsets != ship_bank_up) {
;
	lda     _JoyPad1
	and     #$08
	beq     L03B4
	lda     #<(_ship_bank_up)
	ldx     #>(_ship_bank_up)
	cpx     _player+4+1
	bne     L0333
	cmp     _player+4
	beq     L03B4
;
; player.sprite_offsets = ship_bank_up;
;
L0333:	lda     #<(_ship_bank_up)
	sta     _player+4
	lda     #>(_ship_bank_up)
;
; else if((JoyPad1 & BUTTON_DOWN) && 
;
	jmp     L03AD
L03B4:	lda     _JoyPad1
	and     #$04
	beq     L03B7
;
; (player.sprite_offsets != ship_bank_down) ) { 
;
	lda     #<(_ship_bank_down)
	ldx     #>(_ship_bank_down)
	cpx     _player+4+1
	bne     L033B
	cmp     _player+4
	beq     L03B7
;
; player.sprite_offsets = ship_bank_down;
;
L033B:	lda     #<(_ship_bank_down)
	sta     _player+4
	lda     #>(_ship_bank_down)
;
; else if( !(JoyPad1 & BUTTON_UP) && 
;
	jmp     L03AD
L03B7:	lda     _JoyPad1
	and     #$08
	bne     L03B9
;
; !(JoyPad1 & BUTTON_DOWN) && 
;
	lda     _JoyPad1
	and     #$04
	bne     L03B9
;
; (player.sprite_offsets != ship_level ) ) {
;
	lda     #<(_ship_level)
	ldx     #>(_ship_level)
	cpx     _player+4+1
	bne     L0344
	cmp     _player+4
	beq     L03B9
;
; player.sprite_offsets = ship_level;
;
L0344:	lda     #<(_ship_level)
	sta     _player+4
	lda     #>(_ship_level)
L03AD:	sta     _player+4+1
;
; if( (JoyPad1 & BUTTON_UP) && 
;
L03B9:	lda     _JoyPad1
	and     #$08
	beq     L03BD
;
; (player.top_y > (MIN_Y + SPRITE_HEIGHT )) ) {
;
	lda     _player+1
	cmp     #$11
	bcc     L03BD
;
; player.top_y -= 2;
;
	sec
	sbc     #$02
	sta     _player+1
;
; if( (JoyPad1 & BUTTON_DOWN) && 
;
L03BD:	lda     _JoyPad1
	and     #$04
	beq     L03C0
;
; ( (player.top_y + player.num_v_sprites + SPRITE_HEIGHT) < (MAX_Y - 2 * SPRITE_HEIGHT) ) ){ 
;
	ldx     #$00
	lda     _player+1
	clc
	adc     _player+3
	bcc     L03AE
	inx
	clc
L03AE:	adc     #$08
	bcc     L035B
	inx
L035B:	cpx     #$00
	bne     L035D
	cmp     #$D7
L035D:	bcs     L03C0
;
; player.top_y += 2;
;
	lda     #$02
	clc
	adc     _player+1
	sta     _player+1
;
; if( (JoyPad1 & BUTTON_RIGHT) && 
;
L03C0:	lda     _JoyPad1
	and     #$01
	beq     L03C3
;
; ( (player.left_x + player.num_h_sprites + SPRITE_WIDTH) < (MAX_X - 2 * SPRITE_WIDTH ) ) ) {
;
	ldx     #$00
	lda     _player
	clc
	adc     _player+2
	bcc     L03AF
	inx
	clc
L03AF:	adc     #$08
	bcc     L0367
	inx
L0367:	cpx     #$00
	bne     L0369
	cmp     #$F0
L0369:	bcs     L03C3
;
; player.left_x += 2; 
;
	lda     #$02
	clc
	adc     _player
	sta     _player
;
; if( (JoyPad1 & BUTTON_LEFT) && 
;
L03C3:	lda     _JoyPad1
	and     #$02
	beq     L03C7
;
; ( (player.left_x ) > (MIN_X + SPRITE_WIDTH) ) ) {
;
	lda     _player
	cmp     #$09
	bcc     L03C7
;
; player.left_x -= 1;
;
	dec     _player
;
; if( JoyPad1 & BUTTON_A && !(PrevJoyPad1 & BUTTON_A) ) {
;
L03C7:	lda     _JoyPad1
	and     #$40
	beq     L0377
	lda     _PrevJoyPad1
	and     #$40
	bne     L0377
;
; AddLaser();
;
	jsr     _AddLaser
;
; laser_count -= CheckOffscreenLasers();
;
L0377:	jsr     _CheckOffscreenLasers
	eor     #$FF
	sec
	adc     _laser_count
	sta     _laser_count
;
; WriteMetaSpriteToOAM(&player);
;
	lda     #<(_player)
	ldx     #>(_player)
	jsr     _WriteMetaSpriteToOAM
;
; for(i = 0; i < MAX_LASERS; ++i) {
;
	lda     #$00
	sta     _i
L03CB:	lda     _i
	cmp     #$05
	jcs     L03B1
;
; WriteSpriteToOAM( &(lasers[i]) );
;
	ldx     #$00
	lda     _i
	jsr     aslax2
	clc
	adc     #<(_lasers)
	tay
	txa
	adc     #>(_lasers)
	tax
	tya
	jsr     _WriteSpriteToOAM
;
; for(i = 0; i < MAX_LASERS; ++i) {
;
	inc     _i
	jmp     L03CB

.endproc

