---
name: Epic
about: Large initiative spanning multiple features or areas
title: '[EPIC] Forest Area Complete Design'
labels: ['epic', 'documentation', 'design', 'forest']
assignees: ''
---

## Epic Overview

**Brief Description:**
Complete detailed design specification for Forest Area including all 5 stages, enemies, obstacles, spawn points, and visual/audio direction.

**Goal:**
Provide implementation-ready designs for the first playable area, serving as the template for future areas.

**Scope:**
Forest Area (5 stages): stage layouts, enemy types, wave composition, obstacles, spawn points, visual theme, audio direction.

---

## Related Documentation

- **CONCEPT.md Section:** World & Area Structure (Forest Area), Visual & Audio Design
- **Output:** `./docs/areas/forest/` directory
- **Can Start:** Immediately (no dependencies)

---

## User Stories

As a developer, I want to...
- [ ] Have complete stage layouts for all 5 Forest stages
- [ ] Know exactly which enemies appear in each wave
- [ ] Understand Forest-specific obstacles and mechanics
- [ ] Have visual and audio direction for consistent theming

As a player, I want to...
- [ ] Experience a cohesive Forest theme across all 5 stages
- [ ] Face progressively harder challenges that teach me the game
- [ ] Encounter varied stage layouts and enemy patterns

---

## Features & Tasks

### Required

#### Stage Design (`./docs/areas/forest/stages.md`)
- [ ] #TBD - Design Stage 1 layout (tutorial-like, simple)
- [ ] #TBD - Design Stage 2 layout (introduce obstacles)
- [ ] #TBD - Design Stage 3 layout (more complex layout)
- [ ] #TBD - Design Stage 4 layout (challenging obstacles)
- [ ] #TBD - Design Stage 5 layout (final Forest challenge)
- [ ] #TBD - Define obstacle placement per stage
- [ ] #TBD - Mark spawn points per stage
- [ ] #TBD - Create stage layout diagrams/maps

#### Enemy Design (`./docs/areas/forest/enemies.md`)
- [ ] #TBD - Design basic melee enemy (e.g., Wolf, Boar)
- [ ] #TBD - Design fast melee enemy (e.g., Rabbit, Fox)
- [ ] #TBD - Design tank melee enemy (e.g., Bear)
- [ ] #TBD - Specify enemy stats (health, damage, speed)
- [ ] #TBD - Define enemy AI behaviors (if variations)
- [ ] #TBD - Set essence drop amounts per enemy type
- [ ] #TBD - Create enemy visual description/references

#### Wave Composition (`./docs/areas/forest/waves.md`)
- [ ] #TBD - Design wave patterns for Stage 1 (3 waves)
- [ ] #TBD - Design wave patterns for Stage 2 (3-4 waves)
- [ ] #TBD - Design wave patterns for Stage 3 (4 waves)
- [ ] #TBD - Design wave patterns for Stage 4 (4-5 waves)
- [ ] #TBD - Design wave patterns for Stage 5 (5 waves)
- [ ] #TBD - Define respite durations per stage
- [ ] #TBD - Balance difficulty curve across stages

#### Obstacles & Environment (`./docs/areas/forest/environment.md`)
- [ ] #TBD - Specify solid obstacles (trees, thick vegetation)
- [ ] #TBD - Specify flat obstacles (holes, small plants)
- [ ] #TBD - Define spawn point visuals (forest portals, cave entrances)
- [ ] #TBD - Document environmental color palette (green theme)
- [ ] #TBD - Tile/texture requirements for pixel art

#### Visual & Audio Direction (`./docs/areas/forest/theme.md`)
- [ ] #TBD - Define Forest visual style and color palette
- [ ] #TBD - Specify music direction (nature-themed tracks)
- [ ] #TBD - List required SFX (footsteps on grass, leaves, etc.)
- [ ] #TBD - Reference/mood board for pixel art style

### Optional / Nice-to-Have
- [ ] #TBD - Stage layout sketches/mockups
- [ ] #TBD - Enemy sprite concept art
- [ ] #TBD - Music references/playlist
- [ ] #TBD - Environmental hazard ideas (future expansion)

---

## Technical Considerations

**Systems Affected:**
- Stage generation/loading
- Enemy spawning system
- Obstacle placement
- Visual/audio asset pipeline

**Dependencies:**
- None (pure design work)
- Informs Core Gameplay Prototype enemy types

**Risks:**
- Stage difficulty may need rebalancing after playtesting
- Enemy variety may feel limited with only melee types
- 5 stages might be too short or too long

---

## Acceptance Criteria

- [ ] All 5 Forest stages fully designed with layouts
- [ ] All enemy types specified with stats and behaviors
- [ ] Wave compositions defined for each stage
- [ ] Obstacle types and placement documented
- [ ] Visual and audio direction clear and consistent
- [ ] Difficulty curve feels appropriate (easy → moderate)
- [ ] Documentation ready for implementation
- [ ] Serves as template for future areas

---

## Definition of Done

- [ ] All documentation files created in `./docs/areas/forest/`
- [ ] Stage diagrams/maps created (can be simple ASCII or sketches)
- [ ] Enemy stats balanced and documented
- [ ] Wave compositions feel varied and engaging (on paper)
- [ ] Reviewed against CONCEPT.md for consistency
- [ ] Visual/audio direction approved
- [ ] Ready for asset creation and implementation

---

## Notes

**Design Goals for Forest Area:**
- **Tutorial Zone**: First area should teach core mechanics
- **Simple but Complete**: Showcase all core systems without overwhelming
- **Melee Focus**: No ranged enemies (reserved for Desert/Tundra)
- **Nature Theme**: Feels organic, alive, but not too dark/scary

**Stage Progression Philosophy:**
- Stage 1: Simple, open, few enemies (learn controls)
- Stage 2: Introduce obstacles, slightly more enemies
- Stage 3: More complex layout, varied enemy types
- Stage 4: Challenging but fair, test player skill
- Stage 5: Culmination, prepares for relic choice

**Enemy Types - Initial Thoughts:**
| Enemy | Speed | Health | Damage | Essence | Role |
|-------|-------|--------|--------|---------|------|
| Wolf | Medium | Low | Medium | 5 | Basic threat |
| Rabbit | Fast | Very Low | Low | 3 | Swarm/dodge practice |
| Bear | Slow | High | High | 10 | Tank/priority target |

**Wave Example - Stage 1, Wave 1:**
- 3× Wolf (spaced spawns)
- Goal: Learn movement, shooting, essence collection

**Obstacle Density:**
- Stage 1: 10-15% coverage
- Stage 5: 20-25% coverage
- Balance: Tactical cover vs. movement restriction

**Music Direction:**
- Calm, nature-inspired (birds, wind)
- Not too peaceful (still combat)
- References: Stardew Valley forest, Celeste Chapter 1
