extends KinematicBody2D
class_name Actor

export var gravity: = 3000.0

var velocity: = Vector2.ZERO


func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	move_and_slide(velocity)
