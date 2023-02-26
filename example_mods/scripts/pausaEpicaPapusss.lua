directorio = 'pauseMenu'
--assets
local graves = '/pausa-bas'
--
pause = '' -- tu mama me la mama

function onCreate()
    luaDebugMode = true
  
    makeLuaSprite('bas', 'pausa-bas', 300, -100)
	setObjectCamera('bas', 'camOther')
    scaleObject('bas', 0.6, 0.6);
    addLuaSprite('bas')
    setProperty('bas.visible', false)

    setProperty('bg.visible', false)
end

function onUpdate()
    setProperty('Resume.x', 0)
    setProperty('Resume.y', 75)
end

function onPause()   
    setProperty('bas.visible', true)
    
    
    allowPause = true
end

function onResume()
  
    setProperty('bas.visible', false)
    
end