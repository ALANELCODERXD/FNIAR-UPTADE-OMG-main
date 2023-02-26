function onCreate()
    makeLuaSprite('blurred', 'blurred');
    addLuaSprite('blurred', true);
    setObjectCamera('blurred','camOther')
end

function onUpdate()
    if curStep == 639 then
        setProperty('blurred.visible', false)
    end
    if curStep == 768 then
        setProperty('blurred.visible', true)
    end
end