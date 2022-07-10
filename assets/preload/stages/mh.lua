function onCreate()

	makeAnimatedLuaSprite('bg','bg',-600,-600)
	addAnimationByPrefix('bg','bg','bg',24,true)
	objectPlayAnimation('bg','bg',false)
                setLuaSpriteScrollFactor('11', 0.4, 0.4);
	setScrollFactor('bg',0.8,0.8);
	addLuaSprite('bg',false)

                makeLuaSprite('11', '11', -200, -300);
	setLuaSpriteScrollFactor('11', 1.2, 1.2);
	scaleObject('11',1.2,1.2);
                addLuaSprite('11',false);
end