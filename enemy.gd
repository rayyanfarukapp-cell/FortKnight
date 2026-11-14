extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "skibidi"): 
		var y_delta =global_position.y-body.global_position.y
		if (y_delta>20):
			print ("Destroy Enemy")
			body.jumping()
			queue_free()
