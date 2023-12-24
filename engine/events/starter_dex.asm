; this function temporarily makes the starters (and Ivysaur) owned
; so that the full Pokedex information gets displayed in Oak's lab
StarterDex:
	ld a, 1 << (DEX_ZAPDOS - 1) | 1 << (DEX_MOLTRES - 1) | 1 << (DEX_ARTICUNO - 1)
	ld [wPokedexOwned], a
	predef ShowPokedexData
	xor a
	ld [wPokedexOwned], a
	ret
