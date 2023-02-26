IntroTagWidth = 100		
IntroTextSize = 50	
IntroSubTextSize = 50 
IntroSubSubTextSize = 50  
ekide = 'FFFF00'	
function onCreatePost()

	makeLuaText('JukeBoxSubText', "JOHN_DEV", 100, 100-IntroTagWidth, 0)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', ekide)
	setTextFont('JukeBoxSubText', 'NoplayersOnline.ttf')
	addLuaText('JukeBoxSubText')

	makeLuaSprite('BGD', 'BG-day', -1100, -500);
	scaleObject('BGD', 1.5, 1.6);

	makeLuaSprite('hojas', 'floor1-day', -900, 600);
	scaleObject('hojas', 1.4, 1.4);
	
	

    makeLuaSprite('BGN', 'BG', -1100, -500);
	scaleObject('BGN', 1.5, 1.6);

	makeLuaSprite('hojasN', 'floor1', -900, 600);
	scaleObject('hojasN', 1.4, 1.4);
	 
	setLuaSpriteScrollFactor('hojas', 0.8, 0.8);
	setLuaSpriteScrollFactor('hojasN', 0.8, 0.8);
	setProperty('BGD.visible', false);
	setProperty('hojas.visible', false);
    addLuaSprite('BGD', false);
	addLuaSprite('hojas', false);
	addLuaSprite('BGN', false);
	addLuaSprite('hojasN', false);
	close(true);
end	
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'dia1' then
			setProperty('BGN.visible', false);
	        setProperty('hojasN.visible', false);
			setProperty('BGD.visible', true);
	        setProperty('hojas.visible', true);
		end	
		if value1 == 'noche2' then
			setProperty('BGD.visible', false);
	        setProperty('hojas.visible', false);
			setProperty('BGN.visible', true);
	        setProperty('hojasN.visible', true);
		end	
	end
end		