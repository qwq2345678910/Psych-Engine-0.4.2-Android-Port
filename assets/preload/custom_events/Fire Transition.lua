function onEvent(name,value1,value2)
	if name == 'Fire Transition' then
	    objectPlayAnimation('Fire', 'idle');
		doTweenAlpha('redalpha', 'Fire', tonumber(value1), tonumber(value2), 'linear');
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end