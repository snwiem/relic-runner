extends Node
## Display Manager - Handles display modes and window settings
##
## Autoload singleton that manages fullscreen/windowed toggle,
## resolution scaling, and pixel-perfect rendering setup.

## Emitted when display mode changes
signal display_mode_changed(is_fullscreen: bool)


func _ready() -> void:
	# Ensure we start in windowed mode
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_fullscreen"):
		toggle_fullscreen()
		get_viewport().set_input_as_handled()


## Toggle between fullscreen and windowed mode
func toggle_fullscreen() -> void:
	var current_mode: DisplayServer.WindowMode = DisplayServer.window_get_mode()
	
	if current_mode == DisplayServer.WINDOW_MODE_FULLSCREEN:
		set_windowed()
	else:
		set_fullscreen()


## Set window to fullscreen mode
func set_fullscreen() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	display_mode_changed.emit(true)
	print("Display: Fullscreen mode")


## Set window to windowed mode
func set_windowed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	display_mode_changed.emit(false)
	print("Display: Windowed mode")


## Check if currently in fullscreen mode
func is_fullscreen() -> bool:
	return DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN


## Get current window size
func get_window_size() -> Vector2i:
	return DisplayServer.window_get_size()


## Get base game resolution (1280x720)
func get_base_resolution() -> Vector2i:
	return Vector2i(1280, 720)


## Calculate current scale factor (for integer scaling)
func get_scale_factor() -> int:
	var window_size: Vector2i = get_window_size()
	var base_res: Vector2i = get_base_resolution()
	
	# Calculate the minimum integer scale that fits
	var scale_x: int = window_size.x / base_res.x
	var scale_y: int = window_size.y / base_res.y
	
	return mini(scale_x, scale_y) if mini(scale_x, scale_y) > 0 else 1
