class_name Player
extends CharacterBody2D

@export var speed: int = 100

func get_direction():
   var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
   velocity = input_direction * speed

func _physics_process(delta: float) -> void:
   get_direction()
   move_and_slide()

func _ready() -> void:
   Global.player = self
