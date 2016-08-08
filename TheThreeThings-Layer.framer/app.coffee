# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "OKernel"
	twitter: ""
	description: ""


background = new BackgroundLayer
	image: "images/background.png"
isExpanded = false

layerA = new Layer
	x: Align.center
	y: Align.center
	width: 300
	height: 300
	borderRadius: 10
	originX: 1
	originY: 1
	backgroundColor: "#004385"
	opacity: 1
	shadowBlur: 10
	shadowY: 0
	shadowX: 0
	html: "LayerA"
	style: 
		"text-align": "left"
		"font-size": "18pt"
		"padding": "15pt"
		"font-weight": "600"
		

layerB = new Layer
	x: Align.center
	y: Align.center
	width: 300
	height: 300
	borderRadius: 10
	backgroundColor: "#008dfe"
	originX: 1
	originY: 1
	opacity: 0.8
	shadowBlur: 10
	shadowY: 0
	shadowX: 0
	html: "LayerB"
	style: 
		"text-align": "left"
		"font-size": "18pt"
		"padding": "15pt"
		"font-weight": "600"
	
layerC = new Layer
	x: Align.center
	y: Align.center
	width: 300
	height: 300
	borderRadius: 10
	originX: 1
	originY: 1
	backgroundColor: "#00d6ff"
	opacity: 0.8
	shadowBlur: 10
	shadowY: 0
	shadowX: 0
	html: "LayerC"
	style: 
		"text-align": "left"
		"font-size": "18pt"
		"padding": "15pt"
		"font-weight": "600"
		
textLayer = new Layer
	y: 1100
	html: "Layer"
	x: Align.center
	backgroundColor: ""
	style: 
		"text-align": "center"
		"font-size": "30pt"
		"color": "#000000"
		"font-weight": "600"
	
	
layerA.states.add
    stateA:
        rotation: -45
   	stateB:
   		rotation: 0

layerB.states.add
	stateA:
		rotation: -15
	stateB:
   		rotation: 0

layerC.states.add
	stateA:
		rotation: 15
	stateB:
   		rotation: 0
   		
layerA.states.animationOptions = 
	curve: "spring(0, 30, 0)"
	time: 0.5
layerB.states.animationOptions = 
	time: 0.5
	curve: "spring(0, 30, 0)"
layerC.states.animationOptions = 
	time: 0.5
	curve: "spring(0, 40, 0)"

layerC.on Events.Click, (event, layer) ->
	if !isExpanded
   		layerA.states.switch("stateA")
    	layerB.states.switch("stateA")
    	layerC.states.switch("stateA")
    	isExpanded = true	
	else 
		isExpanded = false
		layerA.states.switch("stateB")
		layerB.states.switch("stateB")
		layerC.states.switch("stateB")

