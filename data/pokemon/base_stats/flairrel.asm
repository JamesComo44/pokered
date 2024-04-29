     db DEX_FLAIRREL ; pokedex id

     db  65,  85,  60, 101,  95
     ;   hp  atk  def  spd  spc

     db FIRE, FIRE ; type
     db 80  ; catch rate
     db 165 ; base exp

     INCBIN "gfx/pokemon/front/flairrel.pic", 0, 1 ; sprite dimensions
     dw FlairrelPicFront, FlairrelPicBack

     db TACKLE, TAIL_WHIP, FIRE_SPIN, NO_MOVE ; level 1 learnset
     db GROWTH_MEDIUM_SLOW ; growth rate

     ; tm/hm learnset
     tmhm RAZOR_WIND,   FLASH,        FIRE_BLAST,   TAKE_DOWN,    DOUBLE_EDGE,  \
          HYPER_BEAM,   RAGE,         MIMIC,        DOUBLE_TEAM,  SEISMIC_TOSS, \
          BIDE,         SWIFT,        REST,         SUBSTITUTE,   SKULL_BASH,   \
          BODY_SLAM,    DRAGON_RAGE,  DIG,          REFLECT,      PAY_DAY
     ; end

     db BANK(FlairrelPicFront)
     assert BANK(FlairrelPicFront) == BANK(FlairrelPicBack)
