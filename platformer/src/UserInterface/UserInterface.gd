extends Control

onready var scene_tree: SceneTree = get_tree()
onready var pause_overlay: ColorRect = $PauseOverlay
onready var score_label: Label = $ScoreLabel
onready var pause_title: Label = $PauseOverlay/Title

var paused: = false setget set_paused


func _ready() -> void:
	PlayerData.connect("updated", self, "update_interface")
	PlayerData.connect("died", self, "_PlayerData_player_died")
	
	update_interface()


func _PlayerData_player_died() -> void:
	self.paused = true
	pause_title.text = "You died!"


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause") and pause_title.text != "You died!":
		self.paused = not self.paused
		scene_tree.set_input_as_handled()

func update_interface() -> void:
	score_label.text = "Score: %s" % PlayerData.score

func set_paused(value: bool) -> void:
	paused = value

	scene_tree.paused = value
	pause_overlay.visible = value
