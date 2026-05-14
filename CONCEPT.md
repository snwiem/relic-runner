# Relic Runner - Game Design Concept

## Protagonist

### Current Implementation
- **Race**: Human
- **Character creation flow** (run start only):
  1. Gender selection (Male, Female, Diverse)
  2. Name entry (used for highscore table)
  3. Relic equipment (manual selection or randomize/dice option)
  - Settings cannot be changed mid-run
- **Starting weapon**: Basic thrown projectiles (sticks or stones)
- **Weapon progression** (via shop skill tree - compete with character upgrades):
  - Throwing sticks/stones → Knives → Bow & Arrows → Revolver → Gun → Machine Gun
  - Players choose: invest in character stats OR better weapons
  - Lost on death (must repurchase in new runs)

### Future Expansion
- Multiple playable races (human warrior, magician, robot, elf archer, etc.)
- Race-specific skill trees
- Race-specific power-ups dropped by enemies
- Unique progression paths per race
- **Boss encounters**: Final area of each world features boss enemy
  - Boss drops treasure box containing relic choices
  - World-themed boss design
- **Difficulty modes**:
  - Easy/Normal/Hard options
  - New Game+ (unlockable harder mode)
  - Modifiers: Disable health bar upgrades, disable shop healing (bonus coins), enemy damage multipliers
  - Challenge runs with specific restrictions
- **Shop timer**: Optional time limit for decisions
  - Relic unlock: Disables shop timer when equipped
  - Adds pressure and rewards quick strategic thinking
- **Aiming visual feedback**: Crosshair snapping indicator (mouse-only)
  - Add if testing shows difficulty with 8-direction snapping
  - Not needed for gamepad players

## Platform & Distribution

### Target Platforms
- **Primary**: PC (Steam)
- **Future**: Nintendo Switch (if successful)
- **Out of scope**: Mobile

### Development
- **Engine**: Godot 4
- **Language**: GDScript (not .NET/C#)

### Controls
- **8-directional lock** (core design): Movement and shooting restricted to N, NE, E, SE, S, SW, W, NW

**Gamepad (Primary/Recommended):**
- Left stick: 8-direction movement
- Right stick: 8-direction aiming (auto-fire while held in direction)
- Pause button: Pause menu

**Keyboard + Mouse (Secondary):**
- **Movement**: QWEASDYXC (8-direction grid)
  - Q=NW, W=N, E=NE, A=W, S=Center, D=E, Y=SW, X=S, C=SE
- **Aiming**: Mouse position (snapped to nearest of 8 directions relative to player)
- **Shooting**: Left Mouse Button (hold for auto-fire)
- Escape: Pause menu

**Keyboard Only (Functional but challenging):**
- **Movement**: QWEASDYXC (same as above)
- **Shooting**: UIOJKLM,. (mirrors movement layout)
  - U=NW, I=N, O=NE, J=W, K=Center, L=E, M=SW, ,=S, .=SE
- Auto-fire while shooting direction key held
- Escape: Pause menu

**Note**: Control rebinding not available in first release (standard defaults only)

### Pause System
- **Pause menu available** during runs (freezes action)
- Access to:
  - Audio settings
  - Video/display settings
  - Run abandonment (with confirmation dialog)
- No save & quit (runs must be completed in one session)

## Overview
Top-down twin-stick shooter with permadeath, score-chasing, and build customization through skill trees and relics.

## Game Flow

### Main Menu
- **New Run**: Start character creation flow
- **Collection**: View unlocked achievements and relics
  - All unlocked achievements displayed
  - **Relic gallery**: 
    - Locked: Question mark icon only (no hints, no world association)
    - Unlocked: Full display with name, description, and visual
    - Shows total count (e.g., "12/45 Relics Unlocked")
  - Track progression and completion
- **Highscore Table**: Top 10 runs (if not already displayed prominently on main menu)
- **Settings**: Audio and display options
- **Credits**: Development credits
- **Quit**: Exit game
- **No tutorial** (intentional design choice)
- **No continue run** (runs must be completed in one session)

### Onboarding
- **No tutorial** - discovery and learning is part of the experience
- Hidden skill tree branches encourage exploration
- Wave counts unknown to build tension and learning

### End of World
- **Stats summary** displayed for completed world:
  - Essence collected
  - Number of areas cleared
  - Power-ups used
- **Essence and coins carry over** to next world choice
- **Options presented**:
  1. Enter next world (if unlocked/available)
  2. Re-run current world
  3. Return to main menu
- If no next world available: End game (credits or main menu)

### Death (Permadeath)
- **Run ends immediately**
- All progress lost (upgrades, essence, coins, power-ups, equipped relics)
- **Persistent elements**: Unlocked relics (can re-equip in new run), unlocked worlds
- **Stats summary** (same as end-of-world):
  - Essence collected
  - Number of areas cleared
  - Power-ups used
- Return to main menu

## Core Mechanics

### Permadeath & Meta-Progression
- **True permadeath**: On death, lose all upgrades, coins, essence, power-ups
- **Meta-progression**: Unlocked relics persist across runs
- **3 relic slots** available per run (potential expansion to 5)
- Before each run, equip up to 3 previously unlocked relics
- During run: if slots full when acquiring new relic, must drop one
- Relics provide starting advantage and build variety
- Completing worlds = permanent relic unlock for future runs

### Controls
- **Movement**: Left stick - 8 directions (N, NE, E, SE, S, SW, W, NW)
- **Shooting**: Right stick - 8 directions, auto-fire while held
- Both sticks operate independently and simultaneously

### Movement System
- **Base speed**: Higher when not shooting, reduced while shooting (tactical choice)
- **Speed upgrades**: Skill tree progression
- **Temporary boosts**: Power-ups increase speed (stackable)
- **Relic override**: Certain offensive relics can remove shooting speed penalty

### Projectile System
- **Visible projectile travel** (requires aim prediction for moving targets)
- **Weapon-dependent stats** (modified by skill tree):
  - Travel speed
  - Hit damage
  - Range
- **Default behavior**:
  - No piercing (disappear on first enemy hit)
  - No bouncing (disappear on obstacle hit)
  - Disappear when missing (out of range or hitting obstacles)
- **Power-up modifications**: Temporary piercing or bouncing effects possible

### Combat
- Single-screen fixed arenas (always fully visible, no scrolling)
- **Enemy spawning**:
  - Fixed spawn points (thematically designed: portals, doors, cave entrances, etc.)
  - Spawn in formations/patterns (tactical positioning)
  - Learnable spawn locations for strategic play
- **Enemy AI**: Basic pathfinding (navigate around obstacles to reach player)
- Progressive difficulty: melee enemies → ranged enemies in later levels
- **No boss enemies** (currently wave-based only)
- **Health system**:
  - Base health pool
  - Maximum health cap increased via shop upgrades (or relics)
  - Refill with essence (shop) or heal power-ups
- Player defeated when health reaches zero (permadeath, run ends)

## Progression Systems

### During Area (Temporary)
**Power-Ups** (spawn randomly in area)
- **Random spawning mechanics**:
  - Unpredictable timing during area
  - Spawn count determined by area difficulty
  - Power-up type probability configured per area
  - Appear anywhere in arena (not tied to enemy deaths)
  - Can spawn on any non-obstacle tile (including enemy-occupied positions)
- **Despawn timer**: Power-ups disappear if not collected
  - Timer decreases with area difficulty (harder areas = shorter collection window)
  - Encourages map exploration and risk-taking
- Faster shooting speed
- Increased bullet count
- Expanded area effect
- Screen-clear ability
- Health restoration
- Temporary armor
- Collection radius boost (for essence and power-ups, stacks with shop upgrade)
- **Duration & stacking varies by power-up type**:
  - Time-based (temporary buff, e.g., 30-60 seconds)
  - One-shot (immediate effect)
  - Area-duration (lasts until area ends)
  - Some stackable (e.g., armor), others not (e.g., bullet multiplier)
- *All lost when area completes or player dies*

**Essence** (dropped by all enemies)
- **Drop mechanics**:
  - Enemy body fades out, essence fades in at death location
  - Scatters randomly in small radius around death position
- **Decay timer**: Essence despawns if not collected within time limit
  - Applies during waves and after area completion
  - Creates urgency for collection vs. combat focus
- **Base collection**: Manual pickup (run over it)
- **Magnetic collection**: Shop upgrade increases pickup radius
- Uncollected essence is lost (despawns)

### Between Areas (Permanent)
**Shop**
- **Optional access after each area** (can skip and proceed directly)
- **No time limit** (browse and plan freely)
- Uses essence (direct) or coins (converted from essence)
- Currency can be saved for later (no pressure to spend)
- **Branching skill tree** (inspired by "Loot Loop"):
  - Each purchased node reveals 1-3 new branch options
  - Branches hidden until prerequisite unlocked (discovery element)
  - Progressive reveal encourages experimentation and replayability
  - Multiple tiers per upgrade path (3-5 levels)
  - Eventual leaf nodes (maximum progression points)
  - **UI navigation**: Zoom in/out, pan/scroll across tree
- Synergy effects between upgrades
- **Strategic choice**: Character upgrades vs. weapon upgrades
  - Weapon tree: Upgrade to better weapons (sticks → knives → bow → revolver → gun → machine gun)
  - Character tree: Health, speed, armor, collection radius, etc.

**Essence Usage:**
1. **Direct healing**: Refill health bar (20 essence = 1 health point - encourages risky play)
2. **Manual conversion**: Convert to coins (10 essence = 1 coin, fixed rate)
3. **Optional**: Can save essence between areas without spending

### World Completion (Run-Duration)
**Relics** (awarded at final area of each world)
- Choose 1 of 3 presented options
- **Single pool** (not categorized, diverse effects)
- **Differentiation**: Naming, description, visual design (color-coded)
- **Primary types**: Offensive and defensive buffs
- **Random selection** from current world's relic pool
- Already unlocked relics can appear (with reduced probability)
- World-themed combat bonuses (active or passive)
- Auto-equipped for remainder of current run
- **Unlocked permanently** - can be equipped at start of future runs
- **3 active slots max** - must drop a relic if slots full when acquiring new one
- Shapes character build (tank, warrior, aggressive, passive, etc.)
- Core meta-progression mechanic

## Structure

### Worlds
- **Early Access**: 3 worlds (Earth-themed)
  1. **Forest** (green theme) - 5 areas
  2. **Desert** (yellow theme) - 10 areas
  3. **Tundra/Ice** (white theme) - 15 areas
- **Unique enemy sets per world** (world-themed creatures and behaviors)
- **Sequential unlock**: Complete final area of world → next world unlocks
- Once unlocked, worlds remain unlocked (choose entry order freely)
- Escalating difficulty AND rewards in later worlds
- Escalating shop prices in later worlds
- Unified skill tree (single tree across all worlds)
- **DLC Strategy**: 3-5 worlds per DLC
  - First DLC: Additional Earth environments
  - Future DLCs: Moon, Mars, other planets (real or fictional)

### Areas
- Multiple connected areas per world (room-like progression)
- **Variable length per world**:
  - Forest: 5 areas (short)
  - Desert: 10 areas (medium)
  - Tundra/Ice: 15 areas (long)
- **Hand-designed layouts** (fixed obstacle placement)
- Fixed layout, fully visible at all times
- One-time access per run (no backtracking)
- Wave-based completion: survive all enemy waves to clear area
- **Brief respite between waves** (collect essence, reposition)
  - Duration decreases with area difficulty (harder areas = shorter breaks)
- Wave count unknown to player (learning/discovery element)
- **Area completion transition**:
  - "Area Finished" banner with countdown (3 seconds)
  - Exit portal/symbol appears
  - Essence continues to decay during countdown
  - Player can collect remaining essence before time expires
  - Auto-teleport to next area when countdown ends
- **Linear difficulty scaling** within each world (each area incrementally harder)
- Difficulty scales by wave count, enemy composition, and spawn rate
- **World-specific obstacles** (two types per world):
  - **Solid obstacles**: Block movement, bullets, and line-of-sight (cover)
    - Forest: Trees/thick vegetation
    - Desert: Rock formations/cacti
    - Tundra: Ice pillars/frozen structures
  - **Flat obstacles**: Block movement but allow shooting through
    - Forest: Holes, small plants
    - Desert: Stones, sand pits
    - Tundra: Ice holes, thin ice patches

### Goals
- No win condition - maximize score (total essence collected)
- Score creates risk/reward: safety (skip essence) vs. high score (collect all)
- Theoretical maximum score exists per world (all enemies killed, all essence collected)
- Run score accumulates across all worlds completed
- Reaching maximum possible score = ultimate achievement
- **Highscore table**: Top 10 runs
  - Displays: Character name, type (race), gender, score
  - Tracks best overall runs (not per-world)

## Visual Design
- Top-down perspective
- Minimalistic pixel art style
- Tile size: 16x16 (or 32x32 if detail needed for differentiation)
- Reference: Brotato-style single-screen presentation

### Display Settings
- **Base resolution**: 1280x720 (16:9 aspect ratio)
- **Integer scaling**: 2x, 3x, 4x multipliers (preserves pixel crispness)
- **Viewport stretch**: Letterboxing for non-16:9 displays
- **Display modes**: Fullscreen and windowed
- **Resolution options**: 1920x1080, 1280x720, 1366x768
- Clean scaling to Switch (720p native) for future port

### HUD Elements
- **Health bar**: Top center, very prominent display
- **Essence counter**: Audio-visual reward feedback on collection
- **Active power-ups**: Display with timer countdowns (where applicable)
- **Equipped relics**: Visible indicator of active relics

## Audio Design

### Music
- **Unified soundtrack**: Main menu, character creation, shop
- **World-specific music pools**: Each world has unique area tracks
  - Forest: Nature-themed music
  - Desert: Arid/wind-themed music
  - Tundra/Ice: Icy/cold-themed music

### Sound Effects
- **Unified across game** (item/action-specific, not world-specific)
- Consistent feedback for: weapons, essence collection, power-ups, damage, etc.

## Achievements (Proposed)
- **Purely cosmetic/tracking** (no gameplay benefits)
- Character titles based on total kills
- Total coins spent milestone
- Relic collection completion
- Skill tree unlock/max progression
- World completion tracking
- *(further refinement needed)*

## Open Questions
1. **Area Count**: How many areas per world?
