extends Node

var player: Player

func _ready() -> void:
   SignalBus.connect("quit", quit)

func quit():
   get_tree().quit()
