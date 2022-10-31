if (side player == blufor) then {
	player createDiaryRecord [
		"Diary", 
		[
			"Briefing",
			"A forest ranger reported suspicious activity at the abandoned <marker name='ldf_marker'>radar station</marker>. Soon after, his radio went quiet. Livonia Defence Force is responding.<br />
<br />
You have arrived on site.<br />
<br />
Search for the forest ranger.<br />
Remain stationed within the compound for the next 30 minutes."
		]
	];
} else {
	player createDiaryRecord [
		"Diary", 
		[
			"Briefing",
			"go south <marker name='ldf_marker'>old radar station</marker> kill <font face='RobotoCondensedBold'>kill</font> <font face='RobotoCondensedBold'>KILL</font> you have until <font face='RobotoCondensedLight'>s u n r i s e</font>"
		]
	];

	player createDiaryRecord [
		"Diary", 
		[
			"Controls",
			"Attack: FIRE<br />
Grab/throw: THROW<br />
Leap: LEAN RIGHT<br />
Jump up: LEAN LEFT<br />
Night vision: BINOCULARS<br />
Hunt vision: NVGs<br />
Howl: RELOAD<br />
<br />
If spooks attempt to use a firearm, they will be instantly killed."
		]
	];
};