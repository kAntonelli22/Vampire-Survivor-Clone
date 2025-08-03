class_name Enemy
extends CharacterBody2D

@export var speed: int = 90

func get_direction():
   if Global.player == null: return
   var input_direction = position.direction_to(Global.player.position)
   velocity = input_direction * speed

func _physics_process(delta: float) -> void:
   get_direction()
   move_and_slide()
