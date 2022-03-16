local turnvalue = 20 -- ignore this

function onEvent(name,value1,value2)

    if name == "iconBop" then
	
	if value1 == 'off' then
	--too lazy
	else 
	if value1 == 'on' then
    turnvalue = 20
	end
end
function onBeatHit()

turnvalue = 20 -- the icon shit
if curBeat % 2 == 0 then
turnvalue = -20
end

setProperty('iconP2.angle',-turnvalue)
setProperty('iconP1.angle',turnvalue)

doTweenAngle('iconTween1','iconP1',0,crochet/1000,'circOut')
doTweenAngle('iconTween2','iconP2',0,crochet/1000,'circOut')
end
end
end