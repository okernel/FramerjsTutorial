# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "OKernel"
	twitter: ""
	description: ""

backgroundLayer = new Layer
	width: Screen.width
	height: Screen.height
	image: "images/background.png"

isInitState = true

layer = new Layer
	y: Align.center
	width: 300
	height: 300
	borderRadius: 10
	opacity: 0.8
	shadowBlur: 10
	shadowY: 0
	shadowX: 0
	style: 
		"text-align": "left"
		"font-size": "18pt"
		"padding": "15pt"
		"font-weight": "600"
		
layer.states.animationOptions = 
	time: 0.3
	curve: "spring(0, 30, 0)"

layer.states.add
	stateA:
		x: Align.center
		html: "StateA"
		backgroundColor: "#00d6ff"
	stateB:
		x: 100
		html: "StateB"
		backgroundColor: "#004385"

layer.states.switch("stateA")

textLayer = new Layer
	y: 1100
	html: "State"
	x: Align.center
	backgroundColor: ""
	style: 
		"text-align": "center"
		"font-size": "30pt"
		"color": "#000000"
		"font-weight": "600"
		
layer.on Events.Click,(event,layer) ->
	
	if isInitState
		layer.states.switch("stateB")
		isInitState = false
	else
		layer.states.switch("stateA")
		isInitState = true