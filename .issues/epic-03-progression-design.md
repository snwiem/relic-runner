---
name: Epic
about: Large initiative spanning multiple features or areas
title: '[EPIC] Progression Systems Design Documentation'
labels: ['epic', 'documentation', 'design']
assignees: ''
---

## Epic Overview

**Brief Description:**
Create detailed design documentation for all progression systems: skill tree, relics, essence economy, and power-ups.

**Goal:**
Define complete specifications for progression systems before implementation, ensuring balance and alignment with CONCEPT.md vision.

**Scope:**
Skill tree structure, relic catalog, essence economy, power-up types, balancing formulas.

---

## Related Documentation

- **CONCEPT.md Section:** Progression Systems
- **Output:** New files in `./docs/` directory
- **Can Start:** Immediately (no dependencies)

---

## User Stories

As a designer/developer, I want to...
- [ ] Have a complete skill tree map with all nodes, costs, and unlock paths
- [ ] Have a catalog of all relics with detailed effects and balancing
- [ ] Understand the essence economy and progression pacing
- [ ] Know all power-up types, durations, and spawn rules
- [ ] Reference detailed specs during implementation

---

## Features & Tasks

### Required

#### Skill Tree Design (`./docs/skill-tree.md`)
- [ ] #TBD - Map complete skill tree structure (branching paths)
- [ ] #TBD - Define all weapon upgrade nodes (sticks → machine gun)
- [ ] #TBD - Define all character upgrade nodes (health, speed, armor, etc.)
- [ ] #TBD - Specify unlock requirements and costs (coins)
- [ ] #TBD - Document synergy effects between nodes
- [ ] #TBD - Balance progression curve (early/mid/late game)
- [ ] #TBD - Create visual diagram of skill tree

#### Relic Catalog (`./docs/relics.md`)
- [ ] #TBD - Design Forest Area relic pool (5-8 relics)
- [ ] #TBD - Design Desert Area relic pool (5-8 relics)
- [ ] #TBD - Design Tundra Area relic pool (5-8 relics)
- [ ] #TBD - Specify relic effects (offensive/defensive)
- [ ] #TBD - Define rarity/unlock probability weights
- [ ] #TBD - Document relic interactions and synergies
- [ ] #TBD - Balance relic power levels

#### Essence Economy (`./docs/economy.md`)
- [ ] #TBD - Define essence drop rates per enemy type
- [ ] #TBD - Calculate expected essence per stage
- [ ] #TBD - Balance healing costs (20:1 ratio)
- [ ] #TBD - Balance coin conversion (10:1 ratio)
- [ ] #TBD - Model progression curve (essence needed per area)
- [ ] #TBD - Define skill tree node costs
- [ ] #TBD - Document score targets and max possible scores

#### Power-Up System (`./docs/power-ups.md`)
- [ ] #TBD - Define all power-up types (10-15 types)
- [ ] #TBD - Specify duration types (timed, one-shot, stage-duration)
- [ ] #TBD - Define stacking rules per power-up
- [ ] #TBD - Set spawn rates and difficulty scaling
- [ ] #TBD - Define despawn timers by difficulty
- [ ] #TBD - Balance power levels and availability

### Optional / Nice-to-Have
- [ ] #TBD - Spreadsheet models for balancing
- [ ] #TBD - Visual mockups of skill tree UI
- [ ] #TBD - Relic icon/art direction notes
- [ ] #TBD - Power-up visual design guidelines

---

## Technical Considerations

**Systems Affected:**
- All progression systems (future implementation)
- Balancing and game economy

**Dependencies:**
- None (pure design work)
- Can inform Core Gameplay Prototype decisions

**Risks:**
- Over-designing before playtesting
- Balance assumptions may not match reality
- Need to stay flexible for iteration

---

## Acceptance Criteria

- [ ] Complete skill tree documented with all nodes, costs, unlocks
- [ ] All relics cataloged with effects, theming, and balance
- [ ] Essence economy modeled and balanced
- [ ] All power-up types specified with clear rules
- [ ] Documentation reviewed against CONCEPT.md for consistency
- [ ] Balancing formulas defined and documented
- [ ] Ready for implementation phase

---

## Definition of Done

- [ ] All documentation files created in `./docs/`
- [ ] Reviewed and approved by project lead
- [ ] No contradictions with CONCEPT.md
- [ ] Sufficient detail for implementation
- [ ] Includes visual aids where helpful (diagrams, tables)
- [ ] Balancing targets and formulas clearly defined
- [ ] Referenced from README.md

---

## Notes

**Design Philosophy:**
- Start simple, iterate based on playtesting
- Ensure choices matter (avoid "auto-pick" nodes)
- Create build diversity (no single optimal path)
- Balance risk/reward (essence for health vs. upgrades)

**Key Questions to Answer:**
- How many skill tree nodes total? (30-50? 50-100?)
- How many coins to fully max one area's tree?
- How many runs to unlock all relics? (too grindy?)
- Should early nodes be cheap to encourage experimentation?
- What's the "feel" of progression pace? (slow grind vs. rapid power?)

**Balancing Approach:**
- Model expected essence per stage (e.g., 10 enemies × 5 essence = 50)
- Calculate run totals (e.g., 5 stages × 50 = 250 essence per Forest run)
- Price skill nodes accordingly (e.g., 10-50 coins for early nodes)
- Test assumptions during prototyping, iterate

**Documentation Format:**
- Use Markdown tables for readability
- Include examples and edge cases
- Link back to CONCEPT.md principles
- Keep concise but complete
