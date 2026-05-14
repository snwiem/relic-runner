---
name: godot
description: Godot 4.x game engine development commands for running, testing, validating, and exporting the game project. Use when implementing game features, testing scenes, or debugging runtime issues.
compatibility: Requires Godot 4.x in ~/.local/bin/godot
---

# Godot Development Skill

Commands for working with the Godot 4.x game engine in the Relic Runner project.

## Available Commands

### Run the Game

Run the project in a window (for testing gameplay):
```bash
godot --path . 2>&1 | head -50
```

Run headless (no window, for validation only):
```bash
godot --headless --quit --path . 2>&1
```

### Validate Project

Check project loads without errors:
```bash
godot --headless --editor --quit --path . 2>&1
```

Import all assets and validate:
```bash
godot --headless --editor --import --quit --path . 2>&1
```

### Run Specific Scene

Test a specific scene file:
```bash
godot --path . scenes/path/to/scene.tscn 2>&1 | head -50
```

### Run with Debug Output

Run with verbose output for debugging:
```bash
godot --path . --verbose 2>&1 | head -100
```

### Check for Errors/Warnings

Scan project for errors without running:
```bash
godot --headless --check-only --path . 2>&1
```

### Export Project (Future)

Export for Linux:
```bash
godot --headless --export-release "Linux/X11" --path . builds/relic-runner-linux.x86_64 2>&1
```

Export for Windows:
```bash
godot --headless --export-release "Windows Desktop" --path . builds/relic-runner-windows.exe 2>&1
```

## Common Workflows

### After Implementing a Feature

1. Validate the project loads:
   ```bash
   godot --headless --editor --quit --path . 2>&1
   ```

2. Run the game to test:
   ```bash
   godot --path . 2>&1 | head -50
   ```

### Debugging Runtime Issues

1. Run with verbose output:
   ```bash
   godot --path . --verbose 2>&1 | head -100
   ```

2. Check console output for errors/warnings

### Before Committing

1. Validate project:
   ```bash
   godot --headless --editor --quit --path . 2>&1
   ```

2. Ensure no errors in output

## Notes

- All commands run from project root
- Use `2>&1` to capture both stdout and stderr
- Pipe to `head` to limit output (adjust number as needed)
- Godot is located at `~/.local/bin/godot` (version 4.6.2)
- Main scene is `res://scenes/main.tscn`
- Target is 60 FPS at 1280x720 resolution

## Project-Specific Settings

- **Base Resolution:** 1280x720
- **Rendering:** Pixel-perfect (no texture filtering)
- **Controls:** 8-directional movement/shooting
- **Performance Target:** 60 FPS

## Troubleshooting

**If Godot doesn't start:**
- Check `which godot` returns `~/.local/bin/godot`
- Verify version with `godot --version`

**If scene doesn't load:**
- Check path is relative to project root
- Verify `.tscn` file exists
- Run validation first

**If import fails:**
- Check asset file formats
- Look for errors in console output
- Validate project structure
