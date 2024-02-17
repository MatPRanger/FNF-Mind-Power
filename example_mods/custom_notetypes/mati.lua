function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'mati' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			--setPropertyFromGroup('unspawnNotes', i, 'texture', 'notetexture'); --Change notetexture
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- make it so original character doesn't sing these notes

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); -- original character doesn't play miss anim on miss
			end
		end
	end
end