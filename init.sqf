//By MattGrunts http://altisliferpg.fr - REPRODUCTION INTERDITE

X_inIT = false;
X_Server = false;
X_Client = false;
X_JIP = false;
X_SPE = false;
X_MP = (if (playersNumber east + playersNumber west + playersNumber resistance + playersNumber civilian > 0) then {true} else {false});

versionInfo = "Altis Life By MattGrunts 0.03";

player setVariable["thirstyLevel",100,true];
player setVariable["hungryLevel",100,true];

execVM "initJoueur.sqf";
execVM "briefing.sqf";
execVM "playerhud.sqf";
execVM "niveauboisson.sqf";
execVM "niveaunourriture.sqf";
