function onGameOver()
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-furnace');
	end

function onEndSong()
    if isStoryMode and not seenCutscene then
        startVideo('finalcutscene')
        seenCutscene = true
        return Function_Stop
    end
    return Function_Continue
end