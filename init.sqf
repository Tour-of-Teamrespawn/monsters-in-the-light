call compile preprocessFileLineNumbers "scripts\common\params.sqf";

if (isServer) then {
	execVM "scripts\server\endings.sqf";
};

if (hasInterface) then {
	waitUntil {
		!isNull player
	};

	if (side player != civilian) then {
		player addRating 100000;
	};

	doStop player;
	call compile preprocessFileLineNumbers "scripts\player\briefing.sqf";
	execVM "scripts\player\radioSilence.sqf";
};

if (!isMultiplayer) then {
	execVM "scripts\common\singleplayerSetup.sqf";
};

[TOUR_respawnTickets, TOUR_respawnTime] execVM "scripts\TOUR_RC\init.sqf";
