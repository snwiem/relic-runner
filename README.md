# Relic Runner

A top-down twin-stick shooter roguelike built with Godot 4.

**Game Design Document:** See [CONCEPT.md](CONCEPT.md)

---

## About

Relic Runner is a permadeath twin-stick shooter where players fight through wave-based stages, collect essence to upgrade their character, and unlock powerful relics for future runs. The game features 8-directional movement and shooting, strategic resource management, and a branching skill tree system.

**Target Platform:** PC (Steam) with potential Nintendo Switch port  
**Status:** Early development

---

## Development Setup

### Prerequisites
- [Godot 4.x](https://godotengine.org/download)
- GDScript knowledge (no C#/.NET)

### Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/relic-runner.git
   cd relic-runner
   ```

2. **Open in Godot**
   - Launch Godot 4
   - Import the project
   - Select the `project.godot` file

3. **Run the game**
   - Press `F5` or click "Run Project"

---

## Project Structure

```
relic-runner/
├── assets/          # Art, audio, and other game assets
├── scenes/          # Godot scene files (.tscn)
├── scripts/         # GDScript files (.gd)
├── resources/       # Godot resources (materials, themes, etc.)
├── addons/          # Third-party plugins
├── CONCEPT.md       # Game design document
├── README.md        # This file
└── project.godot    # Godot project configuration
```

---

## Technical Specifications

### Display
- **Base Resolution:** 1280x720 (16:9)
- **Scaling:** Integer scaling (2x, 3x, 4x)
- **Supported Resolutions:** 1920x1080, 1280x720, 1366x768
- **Modes:** Fullscreen, Windowed

### Art Style
- **Perspective:** Top-down
- **Style:** Minimalistic pixel art
- **Tile Size:** 16x16 (or 32x32 if needed)

### Controls
- **Primary:** Gamepad (twin-stick)
- **Secondary:** Keyboard + Mouse
- **Tertiary:** Keyboard only

See [CONCEPT.md](CONCEPT.md) for detailed control mappings.

---

## Game Structure

### Hierarchy
- **World**: DLC/Expansion (e.g., Earth World, Moon World)
- **Area**: Themed environment (e.g., Forest, Desert, Tundra)
- **Stage**: Individual playable level (e.g., Forest Stage 1-5)

### Early Access Content (Earth World)
- **Forest Area**: 5 stages (short)
- **Desert Area**: 10 stages (medium)
- **Tundra/Ice Area**: 15 stages (long)

---

## Building for Release

### Export Presets

**PC (Windows/Linux/macOS)**
1. Open Project → Export
2. Select platform preset
3. Configure export settings:
   - Texture Format: VRAM Compressed
   - Export Mode: Release
4. Export

**Steam Integration** (future)
- Steamworks SDK integration pending
- Achievement implementation
- Cloud save support

**Nintendo Switch** (future port)
- Requires Nintendo Developer Program membership
- Export via Godot's Switch export template

---

## Testing

### Playtesting Focus Areas
- Balance: Essence economy, skill tree progression
- Difficulty curve: Wave scaling, enemy behavior
- Controls: 8-direction snapping (especially KB+M)
- Performance: Maintain 60 FPS on target hardware

---

## Contributing

This is currently a solo/small team project. Contribution guidelines TBD.

---

## Roadmap

### Early Access (v0.1)
- [x] Game design concept finalized
- [ ] Core movement & shooting mechanics
- [ ] Wave spawning system
- [ ] Essence & power-up systems
- [ ] Basic shop & skill tree
- [ ] Forest area (5 stages)

### Alpha (v0.5)
- [ ] All 3 areas (Forest, Desert, Tundra)
- [ ] Complete skill tree
- [ ] Relic system
- [ ] Highscore & achievements
- [ ] Audio implementation
- [ ] Balance pass

### Beta (v0.9)
- [ ] Polish pass (VFX, juice, feedback)
- [ ] UI/UX refinement
- [ ] Performance optimization
- [ ] Playtesting & bug fixing

### Release (v1.0)
- [ ] Steam integration
- [ ] Marketing assets
- [ ] Launch on Steam Early Access

---

## License

TBD - All rights reserved pending license selection.

---

## Contact

**Developer:** [Your Name]  
**Email:** [Your Email]  
**Twitter/X:** [@YourHandle]

---

*Last Updated: 2026-05-14*
