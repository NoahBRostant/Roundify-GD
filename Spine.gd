extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().get_root().set_transparent_background(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ExitButton_pressed():
	get_tree().quit()


func _on_GeneralButton_pressed():
	$Control/GeneralContainer.visible=true;
	$Control/WindowsContainer.visible=false;
	$Control/DisplayContainer.visible=false;
	$Control/AboutContainer.visible=false;


func _on_WindowsButton_pressed():
	$Control/GeneralContainer.visible=false;
	$Control/WindowsContainer.visible=true;
	$Control/DisplayContainer.visible=false;
	$Control/AboutContainer.visible=false;


func _on_DisplayButton_pressed():
	$Control/GeneralContainer.visible=false;
	$Control/WindowsContainer.visible=false;
	$Control/DisplayContainer.visible=true;
	$Control/AboutContainer.visible=false;


func _on_AboutButton_pressed():
	$Control/GeneralContainer.visible=false;
	$Control/WindowsContainer.visible=false;
	$Control/DisplayContainer.visible=false;
	$Control/AboutContainer.visible=true;


func _on_DeviantartButton_pressed():
	pass


func _on_UpdateButton_pressed():
	$UpdaterWindow.visible=true;


func _on_QuitButton_pressed():
	$ConfirmationDialog.visible=true;


func _on_UpdateButton2_pressed():
	$ConfirmationDialog.visible=false;
