# Relic Runner

"Relic Runner" is a "twin-stick-shooter" game.

### Goal

There is no real "goal" in the game. The achievment is to get the highest "score" during your run. Currently it's not really clear what "score" actually means, but it's used like in the term "highscore".

### Movement

The player moves the player with the left stick into 8 directions (N, NE, E, SE, S, SW, W, NW) and the shooting direction with the other stick in the same directions.

The player is shooting as long as the right stick is pointing towards a direction and moving as long as the left stick is pointing towards a direction. The player can move both sticks in any direction (of the 8 given ones).

The player can move freely, except there are obstacles, in a fixed area. the area is always visible completely.

### Enemies

Enemies spawn from outside the area and try to 'hit' the player. In later levels with higher difficulty the enemies also have range weapons to attack the player by shooting or throwing at the player.

### Life & Death

The player has a specific 'life span' available when entering the area. It's reduced when hit by enemy or enemy weapon. The reduction depends on the strength of the enemy or enemy weapon. When no 'life' is left the player dies.

The player does only have a single live per run. when the player dies the run is over.

### Items

> TODO: we need a better name for this in the domain to distinguish it from shop items (see below)

Enemies drop items when killed. Not every enemy, but random ones depending on the level difficulty or area. this is yet to be defined.

Those items are only available within the area and will be lost when
- either the player dies
- the area is completed

Typical items are:
- faster shooting speed
- more bullets
- more area
- kill all at once
- heal
- non-permament armor
- improved collection area (for coins and items see below)
- ...

### Coins

All enemies drop essence items. The player has to collect the essence to earn them. uncollected essence is "lost" when the area is finished.

### Shop 

Essence is used in the shop. Essence can 
1. be used directly to refill the life-bar
2. sold for coins

Coins are used to buy items from the shop. The shop is available after each area run. 

The shop has no "random item" but provides a items in a skill tree. Items in the tree can have multiple levels (3 or 5?). Each item owned in the skill provides access to additional items in the skill tree. The items can have synergy effects. over all the perk-system has yet to be defined.

Currently it's only important to know:
1. The player has the ability to "save" essence & coins. They do not need to be spend
2. There is always the oportunity to by 'strength' using essence to fill up the life-bar for the next area
3. Items in the shop do either improve character skills or weapon skills.


### Relics

Relics are special to the world the player currently plays. They are collectables which can be collected at the end of the world run when the last area of the world has been finished.

Relics can be random. The player always has the chance to select one out of three relics.

Relics are equiped automatically for the rest of the run.

### Achievements

The game could also contains some sort of achievment system. I'm thinking about something like:
- Title of the Character depending on the number of kills (overall)
- Number of coins spend on the shop
- All relics equipped
- All items unlocked
- All items fully extended
- ... and so on


### Progress

Currently the game design is as follows, but this is very early and might be changed.

"Relic Runner" consists of several worlds (themed settings like forrest, dessert, moon, spaceship etc). Each world except the first one is available when the prio world has been finished. Once a world has been unlocked it stays unlocked and the player can decide which world to enter first. This allowes to provide DLC later on.

The later the world the higher the earnings but also the enemy difficulty and the prices in the shop. It might make sense to have different skill trees per world, but this needs to be further refined.

Each world consists of multiple areas. The areas are some kind of connected (like rooms). The player has to achive the area goal to be able to head to the next area. The later the area the higher the difficult level of the areas are. How many areas per worls is currently not defined yet and depends heavily on the balance of the skill tree items, the difficulty levels and some more dimensions.

Each area is fixed. the player always sees the complete area. there is no scrolling intended (like eg in brotato). The difficulty of each area depends on the number of enemies and the strength of the enemies.

Areas can not be accessed more than one during a run.

The last area of a world always provides a 'Relic'. Currently the idea is to visually present something like a treasure box which contains tree relics. The user has to choose one of the three. Each relic gives very specific combat bonus (active or passiv). Relics are specific to the current world and should match the theme setting of this world.

The player automatically equips the relic and it's activated for the next world. This should allow, in conjunction with the skill tree of the world, to further shape the type of character the player want's to build for his run (tank, warrior, aggressiv, passiv or others).

## Visual concepts

Currently the game is seen as top down pixel shooter. I would prefer a very minimalistic pixel style. Tile-size should be 16x16 but might be changed to 32x32 if the graphics need to be more detailed (eg to better differnciate the worlds, items, enemies)



## Open for discussion

- Race/Type of protagonist
- Name of protagonist (depends on race/type)
- Settings