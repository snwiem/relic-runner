# Display & Rendering System

## Overview

The display system ensures pixel-perfect rendering at 1280x720 base resolution with integer scaling support.

## Configuration

### Base Settings (project.godot)

- **Resolution:** 1280x720 (16:9)
- **Stretch Mode:** viewport
- **Aspect:** keep
- **Scale Mode:** integer
- **Texture Filter:** Nearest (0)
- **2D Snap:** Enabled for transforms and vertices

### Display Manager (Autoload)

Singleton script: `res://scripts/display_manager.gd`

**Features:**
- Fullscreen/windowed toggle (F11)
- Scale factor calculation
- Display mode change signals
- Window size queries

## Usage

### Toggle Fullscreen

Press **F11** to toggle between fullscreen and windowed mode.

### Access Display Manager

```gdscript
# Check if fullscreen
var is_fullscreen: bool = DisplayManager.is_fullscreen()

# Get current window size
var window_size: Vector2i = DisplayManager.get_window_size()

# Get base resolution
var base_res: Vector2i = DisplayManager.get_base_resolution()

# Get current scale factor (1x, 2x, 3x, etc.)
var scale: int = DisplayManager.get_scale_factor()

# Listen for display mode changes
DisplayManager.display_mode_changed.connect(_on_display_mode_changed)
```

### Set Display Modes Manually

```gdscript
# Set fullscreen
DisplayManager.set_fullscreen()

# Set windowed
DisplayManager.set_windowed()

# Toggle
DisplayManager.toggle_fullscreen()
```

## Integer Scaling

The viewport automatically scales using integer multiples:

- **1280x720** → 1x scale (base)
- **2560x1440** → 2x scale
- **3840x2160** → 3x scale

Non-integer resolutions (e.g., 1920x1080) use letterboxing to maintain aspect ratio.

## Pixel-Perfect Rendering

### Project Settings

All textures use **Nearest** neighbor filtering by default (no blur).

2D transforms snap to pixels automatically.

### Import Settings

When importing pixel art sprites:

1. Ensure **Filter** is set to **Nearest** (or disabled)
2. Set **Compress Mode** appropriately (Lossless or VRAM Compressed)
3. For SVG: Verify import scale matches pixel grid

### Best Practices

- Design sprites at 16x16 or 32x32 base size
- Position sprites on integer coordinates
- Scale sprites by integer multiples (2x, 3x, 4x)
- Avoid subpixel positioning

## Testing

Run the main scene to verify:

- Display info shows correct resolution and scale
- Test sprite (colored checkerboard) has crisp edges
- F11 toggles fullscreen smoothly
- Pixels remain sharp in both modes

## Performance

Target: **60 FPS** at all supported resolutions.

The integer scaling viewport is optimized for performance - no real-time filtering or complex scaling operations.

## Supported Resolutions

### Windowed Mode
- 1280x720 (1x)
- 1920x1080 (1.5x with letterboxing)
- 2560x1440 (2x)

### Fullscreen Mode
- Adapts to native display resolution
- Uses integer scaling when possible
- Letterboxing on non-16:9 displays

## Troubleshooting

**Pixels look blurry:**
- Check texture filter is set to Nearest
- Verify 2D snap is enabled in project settings
- Ensure sprite positions are integers

**Wrong window size:**
- Check DisplayManager is loaded as autoload
- Verify window/size settings in project.godot

**Fullscreen not working:**
- Check F11 input action is configured
- Verify toggle_fullscreen action exists
- Check DisplayManager._input() is called
