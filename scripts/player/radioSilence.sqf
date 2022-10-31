if (!isMultiplayer) exitWith {};

waitUntil {
	!isNull (findDisplay 46)
};

enableSentences false;
enableRadio false;
player disableConversation true;

player addEventHandler [
	"respawn",
	{
		execVM "scripts\player\radioSilence.sqf";
	}
];
