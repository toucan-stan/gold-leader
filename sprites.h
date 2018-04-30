/*
 * sprites.h: useful sprite-related constants
 */

#ifndef SPRITES_H
#define SPRITES_H

#include <stdint.h>

/*
 * sprite: 4 bytes representing a single sprite in the game
 * (order is important here - maps to sprite representation in memory)
 */ 

typedef struct sprite {
    uint8_t y;          // y pos
    uint8_t tile_idx;   // index into patt table
    uint8_t attr;       // attribute flags
    uint8_t x;          // x pos
} sprite_t;


/*
 * metasprite: defines an entity (player, enemy, etc.) in the
 * game that is comprised of a series of sprites.
 */ 

typedef struct metasprite {
    uint8_t left_x;
    uint8_t top_y;
    uint8_t num_h_sprites;
    uint8_t num_v_sprites;
    uint8_t* sprite_offsets;
} metasprite_t;

#define SPRITE_HEIGHT    8
#define SPRITE_WIDTH     8

#define MAX_SPRITES 64

// demo background tiles
#define BLANK_TILE 0x05
#define CORNER_TL 0x00
#define CORNER_TR 0x01
#define CORNER_BL 0x10
#define CORNER_BR 0x11
#define EDGE_TOP 0x13
#define EDGE_BOTTOM 0x03
#define EDGE_LEFT 0x12
#define EDGE_RIGHT 0x02

// sprites
#define SHIP_SPRITE_LEVEL 0x00
#define SHIP_SPRITE_BANK_UP 0x03
#define SHIP_SPRITE_BANK_DOWN 0x06
#define SHIP_SPRITE_HOR_TILES 0x03
#define SHIP_SPRITE_VERT_TILES 0x02
#define LASER_SPRITE 0x09

#define MAX_LASERS 5

#endif