extends RigidBody2D

@export var type = 0
@export var nextForm : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if (body.has_method("BeCollidedWith")):
		body.BeCollidedWith(self)
		
func BeCollidedWith(collider):
	if (type == collider.type):
		var instance = nextForm.instantiate()
		instance.position = self.position
		add_child(instance)
		
		queue_free()


func _on_mouse_entered():
	print("MOUSE ENTERED")
