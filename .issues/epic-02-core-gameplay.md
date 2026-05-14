---
name: Epic
about: Large initiative spanning multiple features or areas
title: '[EPIC] Core Gameplay Prototype'
labels: ['epic']
assignees: ''
---

## Epic Overview

**Brief Description:**
Implement the foundational gameplay loop: player movement, shooting, enemies, and basic combat interactions.

**Goal:**
Create a minimal playable prototype that demonstrates core twin-stick shooter mechanics with 8-directional controls.

**Scope:**
Player controller, projectile system, enemy AI, health system, basic stage layout, wave spawning.

---

## Related Documentation

- **CONCEPT.md Section:** Core Mechanics (Movement & Combat, Projectile System)
- **AGENTS.md:** Design Considerations Checklist
- **Depends On:** #TBD - Project Foundation Epic

---

## User Stories

As a player, I want to...
- [ ] Move my character in 8 directions with smooth controls
- [ ] Shoot projectiles in 8 directions that visibly travel
- [ ] Fight enemies that spawn in waves and pathfind toward me
- [ ] Take damage and see my health bar decrease
- [ ] Experience the core combat feel of the game

---

## Features & Tasks

### Required

#### Player Controller
- [ ] #TBD - Implement 8-direction movement with speed system
- [ ] #TBD - Implement shooting speed penalty (slower while shooting)
- [ ] #TBD - Create player sprite and animations (placeholder OK)
- [ ] #TBD - Add player collision and hitbox

#### Projectile System
- [ ] #TBD - Implement 8-direction projectile spawning
- [ ] #TBD - Add visible projectile travel with speed
- [ ] #TBD - Implement projectile hit detection
- [ ] #TBD - Add projectile despawn (hit, obstacle, range)
- [ ] #TBD - Create projectile pooling system (performance)

#### Enemy System
- [ ] #TBD - Create base enemy class/script
- [ ] #TBD - Implement basic pathfinding AI (navigate obstacles)
- [ ] #TBD - Add melee enemy type (Forest placeholder)
- [ ] #TBD - Implement enemy health and damage
- [ ] #TBD - Add enemy death and despawn

#### Combat & Health
- [ ] #TBD - Implement player health system
- [ ] #TBD - Create health bar HUD element
- [ ] #TBD - Add damage feedback (visual/audio)
- [ ] #TBD - Implement death state (player and enemies)

#### Stage & Wave System
- [ ] #TBD - Create test stage scene (simple obstacles)
- [ ] #TBD - Implement fixed spawn points
- [ ] #TBD - Create basic wave spawner
- [ ] #TBD - Add wave completion detection
- [ ] #TBD - Implement respite timer between waves

### Optional / Nice-to-Have
- [ ] #TBD - Particle effects for projectiles/hits
- [ ] #TBD - Screen shake on damage
- [ ] #TBD - Placeholder SFX for shooting/damage
- [ ] #TBD - Camera follow system

---

## Technical Considerations

**Systems Affected:**
- Player controller (new)
- Combat system (new)
- Enemy AI (new)
- Stage management (new)

**Dependencies:**
- Project Foundation Epic must be complete
- Input system must be functional
- Base scenes and templates ready

**Risks:**
- 8-direction snapping feel (especially with mouse)
- Projectile performance with many simultaneous shots
- Enemy pathfinding performance in larger stages
- Getting the "feel" right for twin-stick controls

---

## Acceptance Criteria

- [ ] Player moves in 8 directions on all input methods
- [ ] Shooting works in 8 directions with visible projectiles
- [ ] Movement slows when shooting (speed penalty)
- [ ] Enemies spawn in waves from fixed points
- [ ] Enemies navigate around obstacles using pathfinding
- [ ] Player and enemies take damage correctly
- [ ] Health bar displays and updates properly
- [ ] Waves complete and provide respite period
- [ ] No performance issues (60 FPS with 10+ enemies, 20+ projectiles)
- [ ] Core combat loop feels responsive and fun

---

## Definition of Done

- [ ] Playable prototype demonstrating full combat loop
- [ ] All three input methods tested and working
- [ ] Performance targets met (60 FPS)
- [ ] Code follows AGENTS.md guidelines
- [ ] GDScript properly typed and documented
- [ ] No console errors or warnings
- [ ] Ready for playtesting feedback
- [ ] Foundation ready for progression systems

---

## Notes

**Critical Design Points:**
- Movement speed penalty while shooting is core to tactical gameplay
- 8-direction lock must feel intentional, not restrictive
- Projectile travel speed affects difficulty and aiming skill
- Enemy pathfinding must avoid obstacles but not feel "dumb"

**Performance Targets:**
- 60 FPS with 15 enemies + 30 active projectiles minimum
- Use object pooling for projectiles and enemies
- Profile early, optimize if needed

**Playtesting Focus:**
- Does 8-direction control feel good on gamepad vs. KB+M?
- Is the shooting speed penalty too punishing?
- Do enemies feel challenging but fair?
- Is projectile speed appropriate for aiming?
