function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'endingEnded' then
		seenEnding = true	
	end
	if tag == 'zoomOut' then
		doTweenZoom('zoomOut', 'camGame', 0.9, 1, 'quadInOut');
		runTimer('startCountdown', 1.1);
	end
	if tag == "startCountdown" then
		onCutscene = false--setProperty('inCutscene', false);
		setProperty('camHUD.visible', true);

		startCountdown();
	end
	if tag == 'whit1' then
	    playSound('ambience')
		soundFadeIn('ambience', 1, 0, 0.7)
	    makeLuaSprite('whit-stand','furnace/whittystandin',100,75)
		addLuaSprite('whit-stand', false);
		scaleObject('whit-stand', 0.9, 0.9)
	
       
		runTimer('whit2', 2.0);
	end
	
	if tag == 'whit2' then 
	    characterPlayAnim('boyfriend','singLEFT',true)
        playSound('a')
		runTimer('whit3', 0.7);
	end
	
	if tag == 'whit3' then 
	    playSound('ignite', 0.5)
	    removeLuaSprite('whit-stand', true)
	    makeAnimatedLuaSprite('whit','furnace/whitty_intro',100,75)
        addAnimationByPrefix('whit','start','whitty cutscene',24,false)
        objectPlayAnimation('whit','start',true)
		addLuaSprite('whit', false);
		scaleObject('whit', 0.9, 0.9)
		
		runTimer('whit4', 1.7);
	end
	
	if tag == 'whit4' then 
	    soundFadeOut("ignite", 0.2, 0)
		soundFadeOut("ambience", 0.2, 0)
	    cameraFlash('camGame','000000',2.5,true)
		setProperty('dad.visible', true);
		removeLuaSprite('whit', true)
		runTimer('startCountdown', 0.2);
	end
	
end

function intro()
	setProperty('camHUD.visible', false);
	onCutscene = true --made to prevent the game from locking the camera, at the cost of crashing your game if you press '7'


     setProperty('dad.visible', false);
     runTimer('whit1', 0);
	 
	setProperty('camGame.zoom', 0.75);

end

function onCreate()
	STORY = isStoryMode
	seeingCutscene = false
	seeingIntro = false

	seeingEnding = false -- seeingCutscene
	seenEnding = false -- seenCutscene

	onCutscene = false
end

function onStartCountdown()
	if not seeingIntro and isStoryMode and not onCutscene then
		intro();
		seeingIntro = true;
		return Function_Stop;
	end

	return Function_Continue;
end

function onGameOver()
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-furnace');
	end


