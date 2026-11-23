
extends Node3D

@export var building_count: int = 20

func _ready():
    generate_city()

func generate_city():
    for i in range(building_count):
        var building = MeshInstance3D.new()
        var mesh = BoxMesh.new()

        mesh.size = Vector3(
            randf_range(5, 9),
            randf_range(5, 15),
            randf_range(5, 9)
        )

        building.mesh = mesh
        building.position = Vector3(
            randf_range(-45, 45),
            mesh.size.y / 2,
            randf_range(-45, 45)
        )

        add_child(building)
