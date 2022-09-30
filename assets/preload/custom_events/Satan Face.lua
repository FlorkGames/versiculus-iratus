function onCreate()
	makeAnimatedLuaSprite('satan','SATAN_LAUGH_SCREEN',-100,6)
	addAnimationByPrefix('satan','sus','SATAN LAUGH SCREEN',24,false)
	setScrollFactor('satan', 0, 0);
	setObjectCamera('satan', 'other');
	setProperty('satan.visible',false)
	addLuaSprite('satan',true)
end

function onEvent(name)
    if name == "Satan Face" then
	
	objectPlayAnimation('satan', 'sus', true)
	setProperty('satan.visible',true)

	runTimer('xd', 1, 9);

	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'xd' then
		setProperty('satan.visible',false)
	end
end