function onCreate()
	-- background shit
	makeLuaSprite('manhunt','manhunt',0,0)

	addLuaSprite('manhunt',false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end