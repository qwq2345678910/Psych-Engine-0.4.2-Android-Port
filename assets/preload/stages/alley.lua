local xx = 600;
local yy = 500;
local xx2 = 750;
local yy2 = 500;
local ofs = 10;
local ofs2 = 10;
local followchars = true;
local del = 0;
local del2 = 0;
-- local allowCountdown = false

function onCreate()


    --second phase
    precacheImage('furnace/bottom_wire');
	precacheImage('furnace/rail_wire');
	precacheImage('furnace/smokey_wire');
	precacheImage('furnace/lava_wire');
	
	makeAnimatedLuaSprite('stagebackwire', 'furnace/bottom_wire', -600, -100);
	addAnimationByPrefix('stagebackwire', 'idle', 'bottom bg wireframe', 24, true);
	objectPlayAnimation('stagebackwire', 'idle');
	setLuaSpriteScrollFactor('stagebackwire', 1.0, 1.0);
	scaleObject('stagebackwire', 1.35, 1.35);

	makeAnimatedLuaSprite('stagefrontwire', 'furnace/rail_wire', -700, -220);
	addAnimationByPrefix('stagefrontwire', 'idle', 'rail wireframe', 24, true);
	objectPlayAnimation('stagefrontwire', 'idle');
	scaleObject('stagefrontwire', 1.1, 1.1);
	
	makeAnimatedLuaSprite('pot1wire', 'furnace/smokey_wire', 900, 0);
	addAnimationByPrefix('pot1wire', 'idle', 'smoke wireframe', 24, true);
	objectPlayAnimation('pot1wire', 'idle');

	makeAnimatedLuaSprite('pot2wire', 'furnace/lava_wire', 0, 0);
	addAnimationByPrefix('pot2wire', 'idle', 'lava wireframe', 24, true);
	objectPlayAnimation('pot2wire', 'idle');

    --first phase
    precacheImage('furnace/bottom_bg');
	makeLuaSprite('stageback', 'furnace/bottom_bg', -600, -100);
	setLuaSpriteScrollFactor('stageback', 1.0, 1.0);
	scaleObject('stageback', 1.35, 1.35);

    precacheImage('furnace/being-railed');
	makeLuaSprite('stagefront', 'furnace/being-railed', -700, -220);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);
	scaleObject('stagefront', 1.1, 1.1);
	
	precacheImage('furnace/smoking_hot');
	makeAnimatedLuaSprite('pot1', 'furnace/smoking_hot', 900, 0);
	addAnimationByPrefix('pot1', 'idle', 'Symbol 2', 24, true);
	objectPlayAnimation('pot1', 'idle');

    precacheImage('furnace/tasty_lava');
	makeAnimatedLuaSprite('pot2', 'furnace/tasty_lava', 0, 0);
	addAnimationByPrefix('pot2', 'idle', 'Symbol 1', 24, true);
	objectPlayAnimation('pot2', 'idle');
	
	precacheImage('furnace/transition');
	makeAnimatedLuaSprite('Fire', 'furnace/transition', -400, -500);
	addAnimationByPrefix('Fire', 'idle', 'transition', 24, false);
	setProperty('Fire.alpha', '0');
	setObjectCamera('Fire', 'other');


	addLuaSprite('stageback', false);
	addLuaSprite('pot1', false);
	addLuaSprite('pot2', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('Fire', true);
	
end

function onUpdate()
	
	if del > 0 then
		del = del - 1
	end
	
	if del2 > 0 then
		del2 = del2 - 1
	end
    
	if followchars == true then
		
        if mustHitSection == false then
           
			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end

			if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
           
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
			
			if getProperty('dad.animation.curAnim.name') == 'hmph' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end

			if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
		
        else
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFTmiss' then
               triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHTmiss' then
               triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'singUPmiss' then
               triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWNmiss' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end

            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
		
        end
    
        triggerEvent('Camera Follow Pos','','')
    
	end
    
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
	if value1 == '1' then
    removeLuaSprite('stageback', false);
	removeLuaSprite('pot1', false);
	removeLuaSprite('pot2', false);
	removeLuaSprite('stagefront', false);

	addLuaSprite('stagebackwire', false);
	addLuaSprite('pot1wire', false);
	addLuaSprite('pot2wire', false);
	addLuaSprite('stagefrontwire', false);
	end
	if value1 == '2' then
			
	removeLuaSprite('stagebackwire', false);
	removeLuaSprite('pot1wire', false);
	removeLuaSprite('pot2wire', false);
	removeLuaSprite('stagefrontwire', false);
	
   	addLuaSprite('stageback', false);
	addLuaSprite('pot1', false);
	addLuaSprite('pot2', false);
	addLuaSprite('stagefront', false);
	end
	if value1 == '3' then
	cameraFlash('camGame','FFFFFF',2.7,true)
	end
	if value1 == '4' then
	xx = 475;
	end
	if value1 == '5' then
	xx = 600;
	end
end
end