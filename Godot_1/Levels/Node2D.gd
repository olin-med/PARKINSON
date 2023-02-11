extends Node2D

#definir variavel "moving"
var moving = false
#definir velocidade dos sprites
var speed = 7

#nomear o node Sprite1 como variavel "sprite1" para conveniencia
onready var sprite1 = get_node("Sprite1")
#nomear o node Sprite2 como variavel "sprite2" para conveniencia
onready var sprite2 = get_node("Sprite2")
#nomear o label Label como variavel "label" para conveniencia
onready var label = get_node("Label")

func _ready():
	#nomear o botao StartButton como variavel "startButton" para conveniencia
	var startButton = get_node("StartButton")
	#nomear o botao StopButton como variavel "stopButton" para conveniencia
	var stopButton = get_node("StopButton")

	#conectar funcao start_moving ao botao StartButton
	startButton.connect("pressed", self, "start_moving")
	#conectar funcao stop_moving ao botao StopButton
	stopButton.connect("pressed", self, "stop_moving")

#definir funcao start_moving que, por sua vez, muda o estado da variavel "moving" para true (bool)
func start_moving():
	moving = true

#definir funcao stop_moving que, por sua vez, muda o estado da variavel "moving" para false (bool)
func stop_moving():
	moving = false

func _process(_delta):
	#se a variavel "moving" esta como true, mudar a posicao de sprite1 e sprite2 aleatoriamente em x e y
	if moving:
		sprite1.position += Vector2(randi() % 3 - 1, randi() % 3 - 1) * speed
		sprite2.position += Vector2(randi() % 3 - 1, randi() % 3 - 1) * speed
		#aqui definimos a posicao do sprite como: (x+[algum numero entre -1 e 1], y+[algum numero entre -1 e 1]) 
		#multiplicamos tudo pela velocidade, definida no inicio do programa
	
		#aqui detectamos se os sprites colidiram utilizando distance_to, ou seja: 
		if sprite1.position.distance_to(sprite2.position) < 40:
		#se a distancia entre o centro dos dois sprites é menor do que 40
			label.text = "Boom!"
			#atualizar o texto do label para "boom!"
			moving = false
			#definir a variavel "moving" como false
