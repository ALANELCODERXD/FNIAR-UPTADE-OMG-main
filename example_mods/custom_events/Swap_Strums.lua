-- By FerzyZScarf uwu
switched = false
function onEvent(n,value1,value2)
    if n == 'Swap Strums' then
        value2 = value2 / playbackRate
        if not middlescroll then
            if switched == false then
                noteTweenX('dadnote1', 0, defaultOpponentStrumX0 + 640, value2, 'backOut')
                noteTweenX('dadnote2', 1, defaultOpponentStrumX1 + 640, value2, 'backOut')
                noteTweenX('dadnote3', 2, defaultOpponentStrumX2 + 640, value2, 'backOut')
                noteTweenX('dadnote4', 3, defaultOpponentStrumX3 + 640, value2, 'backOut')

                noteTweenX('bfnote1', 4, defaultPlayerStrumX0 - 640, value2, 'backOut')
                noteTweenX('bfnote2', 5, defaultPlayerStrumX1 - 640, value2, 'backOut')
                noteTweenX('bfnote3', 6, defaultPlayerStrumX2 - 640, value2, 'backOut')
                noteTweenX('bfnote4', 7, defaultPlayerStrumX3 - 640, value2, 'backOut')
                switched = true
        elseif  switched == true then
                noteTweenX('dadnote1', 0, defaultOpponentStrumX0 - 0, value2, 'backOut')
                noteTweenX('dadnote2', 1, defaultOpponentStrumX1 - 0, value2, 'backOut')
                noteTweenX('dadnote3', 2, defaultOpponentStrumX2 - 0, value2, 'backOut')
                noteTweenX('dadnote4', 3, defaultOpponentStrumX3 - 0, value2, 'backOut')

                noteTweenX('bfnote1', 4, defaultPlayerStrumX0 + 0, value2, 'backOut')
                noteTweenX('bfnote2', 5, defaultPlayerStrumX1 + 0, value2, 'backOut')
                noteTweenX('bfnote3', 6, defaultPlayerStrumX2 + 0, value2, 'backOut')
                noteTweenX('bfnote4', 7, defaultPlayerStrumX3 + 0, value2, 'backOut')
                switched = false
            end
            if value1  == 'mid' then
                noteTweenX('dadnote1', 0, defaultOpponentStrumX0 - 600, value2, 'backOut')
                noteTweenX('dadnote2', 1, defaultOpponentStrumX1 - 600, value2, 'backOut')
                noteTweenX('dadnote3', 2, defaultOpponentStrumX2 - 600, value2, 'backOut')
                noteTweenX('dadnote4', 3, defaultOpponentStrumX3 - 600, value2, 'backOut')

                noteTweenX('bfnote1', 4, defaultPlayerStrumX0 - 320, value2, 'backOut')
                noteTweenX('bfnote2', 5, defaultPlayerStrumX1 - 320, value2, 'backOut')
                noteTweenX('bfnote3', 6, defaultPlayerStrumX2 - 320, value2, 'backOut')
                noteTweenX('bfnote4', 7, defaultPlayerStrumX3 - 320, value2, 'backOut')
                if switched == false then
                    switched = true
                elseif switched == true then
                    switched = false
                end
            end
            if value1  == 'mid2' then
                noteTweenX('dadnote1', 0, defaultOpponentStrumX0 - 600, value2, 'backOut')
                noteTweenX('dadnote2', 1, defaultOpponentStrumX1 - 600, value2, 'backOut')
                noteTweenX('dadnote3', 2, defaultOpponentStrumX2 - 600, value2, 'backOut')
                noteTweenX('dadnote4', 3, defaultOpponentStrumX3 - 600, value2, 'backOut')

                noteTweenX('bfnote1', 4, defaultPlayerStrumX0 - 320, value2, 'backOut')
                noteTweenX('bfnote2', 5, defaultPlayerStrumX1 - 320, value2, 'backOut')
                noteTweenX('bfnote3', 6, defaultPlayerStrumX2 - 320, value2, 'backOut')
                noteTweenX('bfnote4', 7, defaultPlayerStrumX3 - 320, value2, 'backOut')
            end
        end
    end
end
