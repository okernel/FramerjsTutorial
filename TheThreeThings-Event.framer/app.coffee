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

testLayer = new Layer
	width: 400
	height: 400
	x: Align.center
	y: Align.center
	backgroundColor: "white"
	borderRadius: 8

stateTextLayer = new Layer
	x: Align.center
	y: 1000
	height: ""
	backgroundColor: ""
	style: 
		"font-weight": "600"
		"color": "white"
		"font-size": "30px"
	
stateTextLayer.states.add
	normalState:
		html: "Normal State"
	clickState:
		html: "Click Event"
	motionState:
		html: "Motion Event"

stateTextLayer.states.switch("normalState")

testLayer.draggable = true

testLayer.on Events.Click, (event,layer) ->
	stateTextLayer.states.switch("clickState")

testLayer.on Events.Move, (offset, draggable, layer) ->
    stateTextLayer.states.switch("motionState")