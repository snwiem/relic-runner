# Relic Runner - Game Design Concept

## Overview
**Relic Runner** is a top-down twin-stick shooter featuring permadeath runs, score-chasing gameplay, and strategic build customization through branching skill trees and collectible relics.

**Core Philosophy:**
- Discovery through play (no tutorials)
- Risk/reward decision-making (safety vs. score)
- Strategic resource management (essence, coins, health)
- Build diversity through relics and skill trees

---

## Platform & Technical

### Target Platforms
- **Primary Release**: PC (Steam)
- **Future Port**: Nintendo Switch (if successful)
- **Out of Scope**: Mobile

### Development Stack
- **Engine**: Godot 4
- **Language**: GDScript (not .NET/C#)
- **Base Resolution**: 1280x720 (16:9 aspect ratio)
- **Scaling**: Integer scaling (2x, 3x, 4x) with letterboxing
- **Display Options**: Fullscreen/windowed, multiple resolutions (1920x1080, 1280x720, 1366x768)

---

## Core Mechanics

### Movement & Combat

**8-Directional Lock** (Core Design Constraint)
- All movement and shooting restricted to: N, NE, E, SE, S, SW, W, NW
- Twin-stick control (gamepad primary)

**Movement System:**
- Higher speed when not shooting (tactical positioning)
- Reduced speed while shooting (creates dynamic risk)
- Speed upgradeable via skill tree
- Temporary speed boosts from power-ups (stackable)
- Certain offensive relics can remove shooting speed penalty

**Projectile System:**
- Visible projectile travel (requires aim prediction)
- Weapon-dependent stats: travel speed, damage, range
- Default: no piercing, no bouncing (disappear on hit)
- Power-ups can temporarily add piercing/bouncing

**Combat:**
- Single-screen fixed arenas (fully visible, no scrolling)
- Enemies spawn from fixed thematic points (portals, doors, etc.)
- Spawn in formations/patterns (learnable strategy)
- Basic pathfinding AI (navigate around obstacles)
- Progressive difficulty: melee → ranged enemies

**Health System:**
- Base health pool
- Max health increased via shop upgrades or relics
- Healing: essence (expensive) or power-ups
- Permadeath when health reaches zero

### Controls

**Gamepad (Primary/Recommended):**
- Left stick: 8-direction movement
- Right stick: 8-direction aiming (auto-fire while held)
- Pause button: Access pause menu

**Keyboard + Mouse (Secondary):**
- Movement: `QWEADYXC` (8-direction grid)
  - Q=NW, W=N, E=NE, A=W, D=E, Y=SW, X=S, C=SE
- Aiming: Mouse position (snapped to nearest 8 directions)
- Shooting: Left Mouse Button (hold for auto-fire)
- Pause: Escape

**Keyboard Only (Functional but challenging):**
- Movement: `QWEADYXC`
- Shooting: `UIOJLM,.` (mirrors movement layout)
  - U=NW, I=N, O=NE, J=W, L=E, M=SW, ,=S, .=SE
- Auto-fire while shooting direction key held
- Pause: Escape

*Note: Control rebinding not available in initial release*

---

## Progression Systems

### Permadeath & Meta-Progression

**True Permadeath:**
- Death ends run immediately
- Lose all: upgrades, essence, coins, power-ups, equipped relics

**Persistent Meta-Progression:**
- Unlocked relics persist across all runs
- Unlocked worlds remain accessible
- 3 relic slots available per run
- Equip up to 3 relics before run start
- Must drop relic if slots full when acquiring new one

### Currency & Resources

**Essence** (Primary Currency)
- Dropped by all killed enemies
- Fades in at death location, scatters in small radius
- **Decay timer**: Despawns if not collected (even during combat)
- Manual collection (run over) or magnetic pickup (skill upgrade)
- Used for:
  1. Direct healing: 20 essence = 1 health (expensive by design)
  2. Convert to coins: 10 essence = 1 coin (fixed rate)
  3. Can be saved between areas

**Score:**
- Total essence collected = score
- Risk/reward: collect everything vs. stay safe
- Theoretical max score exists (perfect run)
- Accumulates across all worlds in single run

### Power-Ups (Temporary)

**Spawn Mechanics:**
- Random spawning throughout area (not enemy drops)
- Unpredictable timing
- Count and probability determined by area difficulty
- Spawn anywhere except obstacles (including enemy positions)
- Despawn timer (decreases with difficulty)

**Types:**
- Faster shooting speed
- Increased bullet count
- Expanded effect area
- Screen-clear ability
- Health restoration
- Temporary armor
- Collection radius boost (stacks with shop upgrade)

**Duration & Stacking (varies by type):**
- Time-based: Temporary buff (e.g., 30-60 seconds)
- One-shot: Immediate effect
- Area-duration: Lasts until area ends
- Some stackable (armor), others not (bullet multiplier)

*All lost when area completes or player dies*

### Shop & Upgrades (Permanent until death)

**Shop Access:**
- Optional after each area (can skip)
- No time limit (strategic planning)
- Currency can be saved

**Branching Skill Tree** (Inspired by "Loot Loop")
- Progressive reveal: each purchase shows 1-3 new branches
- Hidden branches (discovery element)
- Multiple tiers per path (3-5 levels)
- Leaf nodes (max progression)
- UI: Zoom/pan navigation
- Synergy effects between upgrades

**Strategic Choices:**
- **Weapon Tree**: Upgrade weapons (sticks → knives → bow → revolver → gun → machine gun)
- **Character Tree**: Health, speed, armor, collection radius, etc.
- Players decide: better weapons vs. stronger character

### Relics (Run-Duration & Meta)

**Acquisition:**
- Awarded at final area of each world
- Choose 1 of 3 random options from world's pool
- Already unlocked relics can appear (reduced probability)
- Already equiped relics can not appear

**Properties:**
- Single pool (not categorized)
- Offensive and defensive buffs (active or passive)
- World-themed bonuses
- Color-coded visual differentiation

**Mechanics:**
- Auto-equipped for remainder of current run
- **Unlocked permanently** for future runs
- 3 active slots maximum
- Shapes build: tank, warrior, aggressive, passive, etc.

---

## World & Area Structure

### Worlds (Early Access: 3 Worlds)

1. **Forest** (Green) - 5 areas (short)
2. **Desert** (Yellow) - 10 areas (medium)
3. **Tundra/Ice** (White) - 15 areas (long)

**Progression:**
- Sequential unlock: Complete final area → next world unlocks
- Once unlocked, choose entry order freely
- Unique enemy sets per world
- Escalating difficulty and rewards
- Escalating shop prices
- Unified skill tree (shared across worlds)

**DLC Strategy:**
- 3-5 worlds per DLC
- First DLC: Additional Earth environments
- Future DLCs: Moon, Mars, other planets

### Areas

**Design:**
- Hand-designed layouts (fixed obstacles)
- Fully visible at all times (no scrolling)
- One-time access per run (no backtracking)

**Wave System:**
- Wave-based completion (survive all waves)
- Wave count unknown to player (discovery)
- Brief respite between waves (collect essence, reposition)
  - Respite duration decreases with difficulty

**Completion Transition:**
1. "Area Finished" banner with 3-second countdown
2. Exit portal appears
3. Essence continues to decay
4. Collect remaining essence before timer expires
5. Auto-teleport to next area

**Difficulty Scaling:**
- Linear scaling within each world
- Scales by: wave count, enemy composition, spawn rate

**Obstacles (2 types per world):**

| World | Solid (blocks all) | Flat (blocks movement only) |
|-------|-------------------|----------------------------|
| Forest | Trees, thick vegetation | Holes, small plants |
| Desert | Rock formations, cacti | Stones, sand pits |
| Tundra | Ice pillars, frozen structures | Ice holes, thin ice patches |

---

## Protagonist

### Current Implementation
- **Race**: Human
- **Gender**: Male, Female, Diverse (selected at run start)
- **Name**: Player-entered (used for highscore)
- **Starting Weapon**: Thrown projectiles (sticks or stones)

**Character Creation Flow:**
1. Gender selection
2. Name entry
3. Relic equipment (manual or randomize)
- Settings locked during run

**Weapon Progression** (via skill tree):
- Sticks/Stones → Knives → Bow & Arrows → Revolver → Gun → Machine Gun
- Compete with character stat investments
- Lost on death (repurchase in new runs)

### Future Expansion
- Multiple races (warrior, magician, robot, elf archer, etc.)
- Race-specific skill trees
- Race-specific power-ups
- Unique progression paths per race

---

## Game Flow

### Main Menu
- **New Run**: Start character creation
- **Collection**: Achievements & relic gallery
  - Display all unlocked achievements
  - Locked relics: Question mark icon only
  - Unlocked relics: Full display with name/description
  - Progress counter (e.g., "12/45 Relics Unlocked")
- **Highscore**: Top 10 runs (name, race, gender, score)
- **Settings**: Audio and display options
- **Credits**: Development credits
- **Quit**: Exit game

*No tutorial option (intentional design)*

### Run Flow

**Onboarding:**
- No tutorial (discovery through play)
- Hidden skill tree branches encourage exploration
- Wave counts unknown (tension and learning)

**End of World:**
- Stats summary: essence collected, areas cleared, power-ups used
- Essence and coins carry over to next world
- Options:
  1. Enter next world (if unlocked)
  2. Re-run current world
  3. Return to main menu
- If no next world: End game (credits/menu)

**Death:**
- Run ends immediately
- All progress lost (upgrades, currency, items, equipped relics)
- Persistent: unlocked relics, unlocked worlds
- Stats summary (same as world completion)
- Return to main menu

**Pause System:**
- Available during runs (freezes action)
- Access: audio settings, display settings
- Run abandonment (with confirmation)
- No save & quit (runs must complete in one session)

---

## Visual & Audio Design

### Visual Style
- **Perspective**: Top-down
- **Art Style**: Minimalistic pixel art
- **Tile Size**: 16x16 (or 32x32 if detail needed)
- **Reference**: Brotato-style single-screen presentation

### HUD Elements
- **Health Bar**: Top center, very prominent
- **Essence Counter**: Audio-visual reward feedback
- **Active Power-Ups**: Display with timer countdowns
- **Equipped Relics**: Visible indicator

### Music
- **Unified**: Main menu, character creation, shop
- **World-Specific Pools**: Unique area tracks per world
  - Forest: Nature-themed
  - Desert: Arid/wind-themed
  - Tundra: Icy/cold-themed

### Sound Effects
- Unified across game (action-specific, not world-specific)
- Consistent feedback: weapons, essence, power-ups, damage

---

## Achievements (Cosmetic Only)
- Character titles (based on total kills)
- Total coins spent milestones
- Relic collection completion
- Skill tree unlock/max progression
- World completion tracking

*No gameplay benefits - tracking only*

---

## Future Expansion Ideas

### Boss Encounters
- Final area of each world features boss
- Boss drops treasure box with relic choices
- World-themed design

### Difficulty Modes
- Easy/Normal/Hard options
- New Game+ (unlockable)
- Modifiers:
  - Disable health bar upgrades
  - Disable shop healing (bonus coins)
  - Enemy damage multipliers
  - Challenge runs with restrictions

### Shop Timer
- Optional time limit for decisions
- Relic unlock: Disables timer when equipped
- Adds pressure and rewards quick thinking

### Aiming Visual Feedback
- Crosshair snapping indicator (mouse-only)
- Add if testing shows difficulty with 8-direction snapping

---

*Document Version: 1.0*  
*Last Updated: 2026-05-14*
