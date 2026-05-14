---
name: Epic
about: Large initiative spanning multiple features or areas
title: '[EPIC] Project Foundation & Godot Setup'
labels: ['epic']
assignees: ''
---

## Epic Overview

**Brief Description:**
Initialize Godot 4 project with proper structure, configuration, and foundational systems.

**Goal:**
Establish a solid technical foundation that follows best practices and supports all planned features from CONCEPT.md.

**Scope:**
Project setup, configuration, folder structure, base scenes, input system, display settings, core utilities.

---

## Related Documentation

- **CONCEPT.md Section:** Platform & Technical, Visual & Audio Design
- **README.md:** Technical Specifications, Project Structure
- **AGENTS.md:** Development Guidelines, Godot 4.x Best Practices

---

## User Stories

As a developer, I want to...
- [ ] Have a properly structured Godot project that follows conventions
- [ ] Have input systems configured for gamepad, KB+M, and keyboard-only
- [ ] Have display settings that support 1280x720 base resolution with integer scaling
- [ ] Have base scene templates ready for rapid development
- [ ] Have consistent project settings aligned with CONCEPT.md specs

---

## Features & Tasks

### Required

#### Project Structure
- [ ] #TBD - Initialize Godot 4.x project
- [ ] #TBD - Create folder structure (/scenes, /scripts, /assets, /resources, /addons)
- [ ] #TBD - Set up .gitignore for Godot projects
- [ ] #TBD - Configure project.godot settings

#### Display & Rendering
- [ ] #TBD - Configure base resolution (1280x720, 16:9)
- [ ] #TBD - Set up integer scaling viewport
- [ ] #TBD - Implement fullscreen/windowed toggle
- [ ] #TBD - Configure pixel-perfect rendering settings

#### Input System
- [ ] #TBD - Map gamepad controls (8-direction movement/shooting)
- [ ] #TBD - Map keyboard+mouse controls (QWEASDYXC + mouse)
- [ ] #TBD - Map keyboard-only controls (QWEASDYXC + UIOJKLM,.)
- [ ] #TBD - Implement 8-direction input snapping utility
- [ ] #TBD - Create input manager/handler

#### Base Scenes & Templates
- [ ] #TBD - Create main scene structure
- [ ] #TBD - Create stage template scene
- [ ] #TBD - Create UI base scene (HUD, menus)
- [ ] #TBD - Create autoload/singleton scripts (GameManager, etc.)

#### Audio Configuration
- [ ] #TBD - Set up audio buses (Master, Music, SFX)
- [ ] #TBD - Configure audio settings system

### Optional / Nice-to-Have
- [ ] #TBD - Debug overlay for development
- [ ] #TBD - Performance profiler integration
- [ ] #TBD - Editor plugins for workflow improvements

---

## Technical Considerations

**Systems Affected:**
- Entire project foundation
- All future systems depend on this

**Dependencies:**
- None (this is the foundation)

**Risks:**
- Incorrect project settings could require refactoring later
- Input system must support all control schemes from day one
- Resolution/scaling must work correctly for pixel art aesthetic

---

## Acceptance Criteria

- [ ] Godot 4.x project opens without errors
- [ ] Folder structure matches README.md specifications
- [ ] All three control schemes (gamepad, KB+M, KB-only) are functional
- [ ] Display settings support 1280x720 base with integer scaling
- [ ] Pixel art renders crisply without blur
- [ ] Base scene templates are ready for use
- [ ] Project settings documented in README.md (if needed)

---

## Definition of Done

- [ ] Project runs on target platforms (Windows/Linux/macOS)
- [ ] All input methods tested and working
- [ ] Display modes (fullscreen/windowed) functional
- [ ] Base scenes and autoloads created
- [ ] Code follows AGENTS.md guidelines
- [ ] Project structure documented
- [ ] Ready for feature development to begin

---

## Notes

**Reference Materials:**
- Godot 4 Best Practices: https://docs.godotengine.org/en/stable/tutorials/best_practices/
- Pixel Art Setup: https://docs.godotengine.org/en/stable/tutorials/2d/2d_pixel_art.html

**Critical Settings:**
- Viewport stretch mode: `canvas_items`
- Viewport stretch aspect: `keep` (with letterboxing)
- Texture filter: `Nearest` (for pixel art)
- Default gravity: Disabled (top-down game)
