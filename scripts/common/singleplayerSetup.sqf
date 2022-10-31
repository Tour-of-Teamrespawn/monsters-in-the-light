{
	doStop _x;
	_x disableAI "PATH";
	_x disableAI "RADIOPROTOCOL";
} forEach (playableUnits + switchableUnits);
