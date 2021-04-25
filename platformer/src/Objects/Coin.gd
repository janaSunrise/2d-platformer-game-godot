extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

export var score: = 100

func _on_body_entered(body: Node) -> void:
	picked()
	
func picked() -> void:
	PlayerData.score += score
	anim_player.play("fade_out")
