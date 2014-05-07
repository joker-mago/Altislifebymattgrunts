//By MattGrunts http://altisliferpg.fr - REPRODUCTION INTERDITE

X_inIT = false;
X_Server = false;
X_Client = false;
X_JIP = false;
X_SPE = false;
X_MP = (if (playersNumber east + playersNumber west + playersNumber resistance + playersNumber civilian > 0) then {true} else {false});

versionInfo = "Altis Life By MattGrunts 0.01"

execVM "briefing.sqf";
execVM "playerhud.sqf";
