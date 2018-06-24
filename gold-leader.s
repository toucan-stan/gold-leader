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
	.export		_ship_level
	.export		_ship_bank_up
	.export		_ship_bank_down
	.export		_rolly_state_1
	.export		_nametable_0
	.export		_nametable_1
	.export		_PALETTES
	.import		_DrawBackgroundRLE
	.import		_LoadPalette
	.import		_ResetScroll
	.import		_EnablePPU
	.import		_WaitFrame
	.import		_UpdateInput
	.importzp	_JoyPad1
	.importzp	_PrevJoyPad1
	.import		_rand
	.export		_i
	.export		_j
	.export		_new_laser_pos
	.export		_row
	.export		_col
	.export		_game_clock
	.export		_h_scroll
	.export		_attr_offset
	.export		_curr_sprite
	.export		_player
	.export		_lasers
	.export		_laser_count
	.export		_rollys
	.export		_rolly_count
	.export		_new_rolly_pos
	.export		_offscreen_rollys
	.export		_oam_sprites
	.export		_WriteMetaSpriteToOAM
	.export		_WriteSpriteToOAM
	.export		_CheckOffscreenLasers
	.export		_AddLaser
	.export		_UpdatePlayerSprite
	.export		_MovePlayer
	.export		_AddEnemies
	.export		_main

.segment	"RODATA"

_ship_level:
	.byte	$00
	.byte	$01
	.byte	$02
	.byte	$10
	.byte	$11
	.byte	$12
_ship_bank_up:
	.byte	$03
	.byte	$04
	.byte	$05
	.byte	$13
	.byte	$14
	.byte	$15
_ship_bank_down:
	.byte	$06
	.byte	$07
	.byte	$08
	.byte	$16
	.byte	$17
	.byte	$18
_rolly_state_1:
	.byte	$20
	.byte	$21
	.byte	$30
	.byte	$31
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
_game_clock:
	.res	2,$00
_h_scroll:
	.res	1,$00
_attr_offset:
	.res	1,$00
_curr_sprite:
	.res	1,$00
_player:
	.res	7,$00
_lasers:
	.res	20,$00
_laser_count:
	.res	1,$00
_rollys:
	.res	28,$00
_rolly_count:
	.res	1,$00
_new_rolly_pos:
	.res	1,$00
_offscreen_rollys:
	.res	1,$00
.segment	"OAM"
_oam_sprites:
	.res	256,$00

; ---------------------------------------------------------------
; void __near__ __fastcall__ WriteMetaSpriteToOAM (__near__ struct metasprite *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_WriteMetaSpriteToOAM: near

.segment	"CODE"

;
; void __fastcall__ WriteMetaSpriteToOAM(metasprite_t* mspr) {
;
	jsr     pushax
;
; uint8_t sprite_base_offset = 0;
;
	jsr     decsp2
	lda     #$00
	jsr     pusha
;
; uint8_t height_offset = SPRITE_HEIGHT;
;
	lda     #$08
	jsr     pusha
;
; for(row = 0; row < mspr->num_v_sprites; ++row ) {
;
	lda     #$00
	ldy     #$02
L0377:	sta     (sp),y
	lda     (sp),y
	jsr     pusha0
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$03
	lda     (ptr1),y
	jsr     tosicmp0
	bcc     L0379
;
; }
;
	jmp     incsp6
;
; sprite_base_offset = row * mspr->num_h_sprites;
;
L0379:	ldy     #$02
	lda     (sp),y
	jsr     pusha0
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$02
	lda     (ptr1),y
	jsr     tosumula0
	ldy     #$01
	sta     (sp),y
;
; height_offset = SPRITE_HEIGHT * row;
;
	iny
	lda     (sp),y
	asl     a
	asl     a
	asl     a
	ldy     #$00
	sta     (sp),y
;
; for(col = 0; col < mspr->num_h_sprites; ++col ) {
;
	tya
	ldy     #$03
L0376:	sta     (sp),y
	lda     (sp),y
	jsr     pusha0
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$02
	lda     (ptr1),y
	jsr     tosicmp0
	jcs     L01F4
;
; oam_sprites[curr_sprite].y = mspr->top_y + height_offset;
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
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	sta     ptr1
	dey
	lda     (sp),y
	clc
	adc     ptr1
	sta     (sreg),y
;
; oam_sprites[curr_sprite].tile_idx = mspr->sprite_offsets[col + sprite_base_offset];
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
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	iny
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	ldy     #$01
	lda     (sp),y
	clc
	ldy     #$03
	adc     (sp),y
	bcc     L0378
	inx
	clc
L0378:	adc     ptr1
	sta     ptr1
	txa
	adc     ptr1+1
	sta     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	iny
	sta     (sreg),y
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
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$00
	lda     (ptr1),y
	sta     ptr1
	ldy     #$03
	lda     (sp),y
	asl     a
	asl     a
	asl     a
	clc
	adc     ptr1
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
; for(col = 0; col < mspr->num_h_sprites; ++col ) {
;
	iny
	clc
	lda     #$01
	adc     (sp),y
	jmp     L0376
;
; for(row = 0; row < mspr->num_v_sprites; ++row ) {
;
L01F4:	ldy     #$02
	clc
	lda     #$01
	adc     (sp),y
	jmp     L0377

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
; uint8_t offscreen_lasers = 0;
;
	lda     #$00
	jsr     pusha
;
; uint8_t i = 0;
;
	jsr     pusha
;
; for(i = 0; i < MAX_LASERS; ++i ) {
;
	tay
L037B:	sta     (sp),y
	cmp     #$05
	jcs     L0227
;
; if( lasers[i].y < MAX_Y) {
;
	ldx     #$00
	lda     (sp),y
	jsr     aslax2
	sta     ptr1
	txa
	clc
	adc     #>(_lasers)
	sta     ptr1+1
	ldy     #<(_lasers)
	lda     (ptr1),y
	cmp     #$E7
	jcs     L0228
;
; new_laser_pos = lasers[i].x + LASER_SPEED;
;
	ldx     #$00
	lda     (sp,x)
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
	lda     (sp,x)
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	ldy     #$03
	ldx     #$00
	lda     (ptr1),y
	sec
	sbc     _new_laser_pos
	sta     tmp1
	lda     tmp1
	beq     L037A
	bcs     L037C
L037A:	lda     (sp,x)
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	cmp     #$F9
	bcc     L0235
;
; lasers[i].y = MAX_Y; // offscreen
;
L037C:	ldy     #$00
	ldx     #$00
	lda     (sp),y
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     #$E7
	sta     (ptr1),y
;
; ++offscreen_lasers;
;
	iny
	clc
	tya
	adc     (sp),y
	sta     (sp),y
;
; else {
;
	jmp     L0228
;
; lasers[i].x = new_laser_pos;
;
L0235:	ldx     #$00
	lda     (sp,x)
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     _new_laser_pos
	ldy     #$03
	sta     (ptr1),y
;
; for(i = 0; i < MAX_LASERS; ++i ) {
;
L0228:	ldy     #$00
	clc
	lda     #$01
	adc     (sp),y
	jmp     L037B
;
; return offscreen_lasers;
;
L0227:	iny
	lda     (sp),y
	ldx     #$00
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
; uint8_t i = 0;
;
	lda     #$00
	jsr     pusha
;
; if(laser_count < MAX_LASERS) {
;
	lda     _laser_count
	cmp     #$05
	bcs     L024A
;
; i = 0;
;
	lda     #$00
	tay
;
; while( i < MAX_LASERS ) {
;
	jmp     L037E
;
; if(lasers[i].y >= MAX_Y) {
;
L0381:	lda     (sp),y
	jsr     aslax2
	sta     ptr1
	txa
	clc
	adc     #>(_lasers)
	sta     ptr1+1
	ldy     #<(_lasers)
	lda     (ptr1),y
	cmp     #$E7
	bcc     L024D
;
; lasers[i].x = player.left_x + player.num_h_sprites + SPRITE_WIDTH;
;
	ldx     #$00
	lda     (sp,x)
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
	bcc     L037F
	clc
L037F:	adc     #$08
	ldy     #$03
	sta     (ptr1),y
;
; lasers[i].y = player.top_y;
;
	ldy     #$00
	ldx     #$00
	lda     (sp),y
	jsr     aslax2
	clc
	adc     #<(_lasers)
	sta     ptr1
	txa
	adc     #>(_lasers)
	sta     ptr1+1
	lda     _player+1
	sta     (ptr1),y
;
; ++laser_count;
;
	inc     _laser_count
;
; break;
;
	jmp     incsp1
;
; ++i;
;
L024D:	ldy     #$00
	clc
	lda     #$01
	adc     (sp),y
L037E:	sta     (sp),y
;
; while( i < MAX_LASERS ) {
;
	ldx     #$00
	lda     (sp),y
	cmp     #$05
	bcc     L0381
;
; }
;
L024A:	jmp     incsp1

.endproc

; ---------------------------------------------------------------
; void __near__ UpdatePlayerSprite (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_UpdatePlayerSprite: near

.segment	"CODE"

;
; if( (JoyPad1 & BUTTON_UP) && player.sprite_offsets != ship_bank_up) {
;
	lda     _JoyPad1
	and     #$08
	beq     L0388
	lda     #<(_ship_bank_up)
	ldx     #>(_ship_bank_up)
	cpx     _player+4+1
	bne     L025B
	cmp     _player+4
	beq     L0388
;
; player.sprite_offsets = ship_bank_up;
;
L025B:	lda     #<(_ship_bank_up)
	sta     _player+4
	lda     #>(_ship_bank_up)
;
; else if((JoyPad1 & BUTTON_DOWN) && 
;
	jmp     L0385
L0388:	lda     _JoyPad1
	and     #$04
	beq     L038B
;
; (player.sprite_offsets != ship_bank_down) ) {         
;
	lda     #<(_ship_bank_down)
	ldx     #>(_ship_bank_down)
	cpx     _player+4+1
	bne     L0263
	cmp     _player+4
	beq     L038B
;
; player.sprite_offsets = ship_bank_down;
;
L0263:	lda     #<(_ship_bank_down)
	sta     _player+4
	lda     #>(_ship_bank_down)
;
; else if( !(JoyPad1 & BUTTON_UP) && 
;
	jmp     L0385
L038B:	lda     _JoyPad1
	and     #$08
	bne     L038C
;
; !(JoyPad1 & BUTTON_DOWN) && 
;
	lda     _JoyPad1
	and     #$04
	bne     L038C
;
; (player.sprite_offsets != ship_level ) ) {
;
	lda     #<(_ship_level)
	ldx     #>(_ship_level)
	cpx     _player+4+1
	bne     L026C
	cmp     _player+4
	bne     L026C
L038C:	rts
;
; player.sprite_offsets = ship_level;
;
L026C:	lda     #<(_ship_level)
	sta     _player+4
	lda     #>(_ship_level)
L0385:	sta     _player+4+1
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ MovePlayer (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_MovePlayer: near

.segment	"CODE"

;
; if( (JoyPad1 & BUTTON_UP) && 
;
	lda     _JoyPad1
	and     #$08
	beq     L0394
;
; (player.top_y > (MIN_Y + SPRITE_HEIGHT )) ) {
;
	lda     _player+1
	cmp     #$11
	bcc     L0394
;
; player.top_y -= 2;
;
	sec
	sbc     #$02
	sta     _player+1
;
; if( (JoyPad1 & BUTTON_DOWN) && 
;
L0394:	lda     _JoyPad1
	and     #$04
	beq     L0397
;
; ( (player.top_y + player.num_v_sprites + SPRITE_HEIGHT) < ( MAX_Y - (SPRITE_HEIGHT << 1) ) ) ){ 
;
	ldx     #$00
	lda     _player+1
	clc
	adc     _player+3
	bcc     L038F
	inx
	clc
L038F:	adc     #$08
	bcc     L0284
	inx
L0284:	cpx     #$00
	bne     L0287
	cmp     #$D7
L0287:	bcs     L0397
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
L0397:	lda     _JoyPad1
	and     #$01
	beq     L039A
;
; ( (player.left_x + player.num_h_sprites + SPRITE_WIDTH) < (MAX_X - (SPRITE_WIDTH << 1) ) ) ) {
;
	ldx     #$00
	lda     _player
	clc
	adc     _player+2
	bcc     L0390
	inx
	clc
L0390:	adc     #$08
	bcc     L0291
	inx
L0291:	cpx     #$00
	bne     L0294
	cmp     #$F0
L0294:	bcs     L039A
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
L039A:	lda     _JoyPad1
	and     #$02
	beq     L039C
;
; ( (player.left_x ) > (MIN_X) ) ) {
;
	lda     _player
	bne     L039D
L039C:	rts
;
; player.left_x -= 1;
;
L039D:	dec     _player
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ AddEnemies (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_AddEnemies: near

.segment	"CODE"

;
; if( ((game_clock % 120) == 0) && (rolly_count < MAX_ROLLYS)) {
;
	lda     _game_clock
	ldx     _game_clock+1
	jsr     pushax
	lda     #$78
	jsr     tosumoda0
	cpx     #$00
	bne     L02A8
	cmp     #$00
	bne     L02A8
	lda     _rolly_count
	cmp     #$04
	bcc     L039F
L02A8:	rts
;
; rollys[rolly_count].left_x = MAX_X - 0x01;
;
L039F:	lda     _rolly_count
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #$FF
	ldy     #$00
	sta     (ptr1),y
;
; rollys[rolly_count].top_y = MAX_Y >> 0x02;
;
	ldx     #$00
	lda     _rolly_count
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #$39
	iny
	sta     (ptr1),y
;
; ++rolly_count;
;
	inc     _rolly_count
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; game_clock = 0;
;
	lda     #$00
	sta     _game_clock
	sta     _game_clock+1
;
; h_scroll = 0;
;
	sta     _h_scroll
;
; LoadPalette(PALETTES, sizeof(PALETTES));
;
	lda     #<(_PALETTES)
	ldx     #>(_PALETTES)
	jsr     pushax
	lda     #$20
	jsr     _LoadPalette
;
; DrawBackgroundRLE(nametable_0, 0);
;
	lda     #<(_nametable_0)
	ldx     #>(_nametable_0)
	jsr     pushax
	lda     #$00
	jsr     _DrawBackgroundRLE
;
; DrawBackgroundRLE(nametable_1, 1);
;
	lda     #<(_nametable_1)
	ldx     #>(_nametable_1)
	jsr     pushax
	lda     #$01
	jsr     _DrawBackgroundRLE
;
; curr_sprite = 0;
;
	lda     #$00
	sta     _curr_sprite
;
; player.left_x = ( MIN_X + (SPRITE_WIDTH << 1) );
;
	lda     #$10
	sta     _player
;
; player.top_y = ( (MAX_Y >> 1) - (SPRITE_HEIGHT >> 1) );
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
; laser_count = 0;
;
	lda     #$00
	sta     _laser_count
;
; for(i = 0; i < MAX_LASERS; ++i) {
;
	sta     _i
L03A0:	lda     _i
	cmp     #$05
	bcs     L03A1
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
	jmp     L03A0
;
; rolly_count = 0;
;
L03A1:	lda     #$00
	sta     _rolly_count
;
; offscreen_rollys = 0;
;
	sta     _offscreen_rollys
;
; for(i = 0; i < MAX_ROLLYS; ++i) {
;
	sta     _i
L03A2:	lda     _i
	cmp     #$04
	jcs     L02E7
;
; rollys[i].num_h_sprites = ROLLY_HOR_TILES;
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #$02
	tay
	sta     (ptr1),y
;
; rollys[i].num_v_sprites = ROLLY_VERT_TILES;
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	tya
	iny
	sta     (ptr1),y
;
; rollys[i].sprite_offsets = rolly_state_1;
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #<(_rolly_state_1)
	iny
	sta     (ptr1),y
	iny
	lda     #>(_rolly_state_1)
	sta     (ptr1),y
;
; rollys[i].ticks = 0;
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #$00
	iny
	sta     (ptr1),y
;
; rollys[i].top_y = MAX_Y + (SPRITE_HEIGHT);    // offscreen
;
	tax
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #$EF
	ldy     #$01
	sta     (ptr1),y
;
; rollys[i].left_x = MAX_X;   // offscreen   
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #$00
	dey
	sta     (ptr1),y
;
; for(i = 0; i < MAX_ROLLYS; ++i) {
;
	inc     _i
	jmp     L03A2
;
; ResetScroll();
;
L02E7:	jsr     _ResetScroll
;
; EnablePPU();
;
	jsr     _EnablePPU
;
; WaitFrame();
;
L0303:	jsr     _WaitFrame
;
; curr_sprite = 0;
;
	lda     #$00
	sta     _curr_sprite
;
; if( ((game_clock % 30) == 0) && (rolly_count < MAX_ROLLYS)) {
;
	lda     _game_clock
	ldx     _game_clock+1
	jsr     pushax
	lda     #$1E
	jsr     tosumoda0
	cpx     #$00
	bne     L03A6
	cmp     #$00
	bne     L03A6
	lda     _rolly_count
	cmp     #$04
	bcs     L03A6
;
; for(i = 0; i < MAX_ROLLYS; ++i) {
;
	stx     _i
L03A4:	lda     _i
	cmp     #$04
	bcs     L03A6
;
; if( rollys[i].top_y > MAX_Y ) {
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	cmp     #$E8
	bcc     L03A5
;
; rollys[i].left_x = (MAX_X - SPRITE_WIDTH << 0x01);
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #$F0
	dey
	sta     (ptr1),y
;
; rollys[i].top_y = SPRITE_HEIGHT + (rand() % (MAX_Y - SPRITE_HEIGHT) );
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	tay
	txa
	adc     #>(_rollys)
	tax
	tya
	jsr     pushax
	jsr     _rand
	jsr     pushax
	ldx     #$00
	lda     #$DF
	jsr     tosmoda0
	clc
	adc     #$08
	ldy     #$01
	jsr     staspidx
;
; ++rolly_count;
;
	inc     _rolly_count
;
; break;
;
	jmp     L03A6
;
; for(i = 0; i < MAX_ROLLYS; ++i) {
;
L03A5:	inc     _i
	jmp     L03A4
;
; offscreen_rollys = 0;
;
L03A6:	lda     #$00
	sta     _offscreen_rollys
;
; for(i = 0; i < MAX_ROLLYS; ++i) {
;
	sta     _i
L03A8:	lda     _i
	cmp     #$04
	jcs     L03AC
;
; if( rollys[i].top_y <= MAX_Y) {
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	cmp     #$E8
	jcs     L03AB
;
; new_rolly_pos = rollys[i].left_x -= ROLLY_SPEED;
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	dey
	lda     (ptr1),y
	sec
	sbc     #$02
	sta     (ptr1),y
	sta     _new_rolly_pos
;
; if( rollys[i].left_x < new_rolly_pos || rollys[i].left_x == 0 ) {
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	sta     ptr1
	txa
	clc
	adc     #>(_rollys)
	sta     ptr1+1
	ldy     #<(_rollys)
	ldx     #$00
	lda     (ptr1),y
	cmp     _new_rolly_pos
	bcc     L03B4
	lda     _i
	jsr     mulax7
	sta     ptr1
	txa
	clc
	adc     #>(_rollys)
	sta     ptr1+1
	ldy     #<(_rollys)
	lda     (ptr1),y
	beq     L03A9
	ldx     #$00
	jmp     L03AA
;
; rollys[i].top_y = MAX_Y + (SPRITE_HEIGHT); // offscreen
;
L03A9:	tax
L03B4:	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     #$EF
	ldy     #$01
	sta     (ptr1),y
;
; ++offscreen_rollys;
;
	inc     _offscreen_rollys
;
; else {
;
	jmp     L03AB
;
; rollys[i].left_x = new_rolly_pos;
;
L03AA:	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	lda     _new_rolly_pos
	ldy     #$00
	sta     (ptr1),y
;
; for(i = 0; i < MAX_ROLLYS; ++i) {
;
L03AB:	inc     _i
	jmp     L03A8
;
; rolly_count -= offscreen_rollys;
;
L03AC:	lda     _offscreen_rollys
	eor     #$FF
	sec
	adc     _rolly_count
	sta     _rolly_count
;
; UpdateInput();
;
	jsr     _UpdateInput
;
; UpdatePlayerSprite();
;
	jsr     _UpdatePlayerSprite
;
; MovePlayer();
;
	jsr     _MovePlayer
;
; if( JoyPad1 & BUTTON_A && !(PrevJoyPad1 & BUTTON_A) ) {
;
	lda     _JoyPad1
	and     #$40
	beq     L034C
	lda     _PrevJoyPad1
	and     #$40
	bne     L034C
;
; AddLaser();
;
	jsr     _AddLaser
;
; laser_count -= CheckOffscreenLasers();
;
L034C:	jsr     _CheckOffscreenLasers
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
L03B0:	lda     _i
	cmp     #$05
	bcs     L03B1
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
	jmp     L03B0
;
; for(i = 0; i < MAX_ROLLYS; ++i) {
;
L03B1:	lda     #$00
	sta     _i
L03B2:	lda     _i
	cmp     #$04
	bcs     L0363
;
; if(rollys[i].top_y <= MAX_Y) {
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	sta     ptr1
	txa
	adc     #>(_rollys)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	cmp     #$E8
	bcs     L03B3
;
; WriteMetaSpriteToOAM( &(rollys[i]) );
;
	ldx     #$00
	lda     _i
	jsr     mulax7
	clc
	adc     #<(_rollys)
	tay
	txa
	adc     #>(_rollys)
	tax
	tya
	jsr     _WriteMetaSpriteToOAM
;
; for(i = 0; i < MAX_ROLLYS; ++i) {
;
L03B3:	inc     _i
	jmp     L03B2
;
; ++game_clock;
;
L0363:	inc     _game_clock
	jne     L0303
	inc     _game_clock+1
;
; while(1) {
;
	jmp     L0303

.endproc

