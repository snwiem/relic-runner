extends Node2D
## Main scene script - Entry point for the game
##
## Displays basic information about display settings for testing.


@onready var label: Label = $Label


func _ready() -> void:
	# Connect to display manager signals
	DisplayManager.display_mode_changed.connect(_on_display_mode_changed)
	
	# Initial update
	_update_display_info()


func _update_display_info() -> void:
	if not label:
		return
		
	var info: String = ""
	info += "Relic Runner - Display Test\n\n"
	info += "Base Resolution: %s\n" % DisplayManager.get_base_resolution()
	info += "Window Size: %s\n" % DisplayManager.get_window_size()
	info += "Scale Factor: %dx\n" % DisplayManager.get_scale_factor()
	info += "Fullscreen: %s\n\n" % ("Yes" if DisplayManager.is_fullscreen() else "No")
	info += "Press F11 to toggle fullscreen\n"
	info += "Press ESC to quit"
	
	label.text = info


func _on_display_mode_changed(_is_fullscreen: bool) -> void:
	_update_display_info()


func _input(event: InputEvent) -> void:
	# Allow ESC to quit during testing
	if event.is_action_pressed("pause"):
		get_tree().quit()
