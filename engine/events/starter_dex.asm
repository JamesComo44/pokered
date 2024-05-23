; this function temporarily makes the starters (and Ivysaur) owned
; so that the full Pokedex information gets displayed in Oak's lab
StarterDex:
	push hl
	ld d, $13 ; default = $13, increase for each 8 pokemon added (19 * 8 = 152)
	ld hl, wPokedexOwned
	ld b, d
	ld a, $ff ; set pokedex to fully complete
.load_dex
	ld [hli], a
	dec b
	jr nz, .load_dex
	predef ShowPokedexData
	ld hl, wPokedexOwned
	ld b, d
IF DEF(_DEBUG)
	pop hl
	ret
ELSE
	ld a, $0 ; set pokedex back to empty
ENDC
.unload_dex
	ld [hli], a
	dec b
	jr nz, .unload_dex
	pop hl
	ret
