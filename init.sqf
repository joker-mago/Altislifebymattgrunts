//By MattGrunts http://altisliferpg.fr - REPRODUCTION INTERDITE

X_inIT = false;
X_Server = false;
X_Client = false;
X_JIP = false;
X_SPE = false;
X_MP = (if (playersNumber east + playersNumber west + playersNumber resistance + playersNumber civilian > 0) then {true} else {false});

versionInfo = "Altis Life By MattGrunts 0.03";

player setVariable["thirstLevel",100,true];
player setVariable["hungryLevel",100,true];
player setVariable["dormir",100,true];

[8, true, true, 7] execFSM "core_time.fsm";
execVM "initJoueur.sqf";
execVM "briefing.sqf";
execVM "playerhud.sqf";
execVM "niveauboisson.sqf";
execVM "niveaunourriture.sqf";
execVM "dormir.sqf";
execVM "remiseazerosihack.sqf";
