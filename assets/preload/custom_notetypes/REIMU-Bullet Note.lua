function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'REIMU-Bullet Note' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'REIMUbullet_NOTE'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'REIMU-Bullet Note' then
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		cameraShake('camGame', 0.01, 0.2)
    end
end

local MissAnims = {"LEFTMiss", "DOWNMiss", "UPMiss", "RIGHTMiss"}
function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'REIMU-Bullet Note' and difficulty == 2 then
		setProperty('health', -1);
	elseif noteType == 'REIMU-Bullet Note' and difficulty == 1 then
		setProperty('health', getProperty('health')-0.8);
		runTimer('bleed', 0.2, 20);
		characterPlayAnim('boyfriend', MissAnims[direction + 1], true);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.001);
	end
end