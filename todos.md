# Bugs
- [x] Graphics Rendering incorrectly
- [x] Not showing up in Pokedex
  - Fixed in `debug_party.asm` at `DebugSetPokedexEntries`. When we added mew, this wasn't updated, because Mew was removed from Pokedex.
- [x] Debug battle not registering moves (all are Pound??)
- [x] Make sure cry matches what was expected
- [x] Rival picks up pokeball in Oak's Lab

# New Features
- [ ] More than 199 Pokemon
  - https://github.com/pret/pokered/wiki/Trainers-are-not-Pokemon
  - Default limit is 199 (indexes $C8)
  - Total max is 255 due to 8 bit index value
  - Base Pokemon count is 151, leaving 48 available slots

# Improved Graphics
## Pokemon
https://www.pokencyclopedia.info/en/index.php?id=sprites
- Combine Red, Green, and Blue Sprites
- Maybe back-port Gen2 sprites
- Space World 1997 & 1999 G/S Prototypes
  - https://github.com/Rangi42/redstarbluestar/tree/master/pic

## Trainers
It would be cool to include new trainer sprites and other things too

## Modify Main Menu (intro)
https://bulbapedia.bulbagarden.net/wiki/Game_intro


## World Sprites & Tiles

# Completed Tutorials
https://github.com/pret/pokered/wiki/Tutorials
- Adding a New Pokemon
  - Moved Mew to be in-line with other Pokemon (removed from main.asm)
- Improve the Pokemon picture system
  - Created new ROM Bank (Pics 7) for new Pics (including Mew)
- 