extends CanvasLayer

@export var player : Player
@export var tileMap : TileMap

@onready var sub_viewport = $SubViewportContainer/SubViewport
@onready var camera = $SubViewportContainer/SubViewport/Camera2D
@onready var zoom_in = $SubViewportContainer/ZoomIn
@onready var zoom_out = $SubViewportContainer/ZoomOut


var miniMapPlayer

func _ready() -> void:
	miniMapPlayer = player.duplicate()
	
	sub_viewport.add_child(tileMap.duplicate())
	sub_viewport.add_child(miniMapPlayer)

func _process(_delta) -> void:
	miniMapPlayer.position = player.position

func _physics_process(_delta) -> void:
	camera.position = player.position

func _on_zoom_in_pressed():
	camera.zoom += 0.1
	pass # Replace with function body.
