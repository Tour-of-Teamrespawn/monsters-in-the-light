if (!isServer) exitWith {};

sleep 15;

private _fnc_countActiveBlufor = {
	{
		alive _x &&
		side _x == blufor
	} count allPlayers
};

waitUntil {
	sleep 1;
	call _fnc_countActiveBlufor > 0;
};

waitUntil {
	sleep 1;

	dayTime >= 5.5 || call _fnc_countActiveBlufor == 0  // finish when either its past 5:30 or all blufor are dead
};

if (call _fnc_countActiveBlufor == 0) then {
	"MonstersWin" call BIS_fnc_endMissionServer;
} else {
	{
		_x setDamage 1;
	} forEach (allPlayers select {side _x != blufor});

	sleep 1;
	"MonstersLose" call BIS_fnc_endMissionServer;
};
