function onCreate()
    makeLuaSprite('black', 'black');
    setObjectCamera('black','camOther')
end

function onUpdate()
    if curStep == 416 then
        addLuaSprite('black', true);
    end
    if curStep == 1760 then
        removeLuaSprite('black', true);
    end
end