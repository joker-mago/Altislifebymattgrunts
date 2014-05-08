/*
  Fichier: whitelist_gendarmes.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
if (isServer) exitwith {};

sleep 1;
waitUntil {!isNull player};
waitUntil {player == player};

//whitelist flic
_CopList=[
			Cop_1,
			Cop_2,
			Cop_3,
			Cop_4,
			Cop_5,
			Cop_6,
			Cop_7,
			Cop_8,
			Cop_9,
			Cop_10,
			Cop_11,
			Cop_12,
			Cop_13,
			Cop_14,
			Cop_15,
			Cop_16,
			Cop_17,
			Cop_18,
			Cop_19,
			Cop_20,
			Cop_21,
			Cop_22,
			Cop_23,
			Cop_24
];


if(player in _CopList) then 
{
_uidListflic = [
	"76561198087719454", // SFP Maxou
	"76561198027289519", // Julien
	"76561198070774830", // [SFP] xX-Anthony-Xx
	"76561198063681847", // Gaetan 
	"76561198007498396", // Maxime
	"76561197982967130", // Toto
	"76561197999290097", // Julien
	"76561198059921545", // Favess 
	"76561198068439924", // Romain16370 
	"76561198010143480", // Alexis1026 (paul kellerman)
	"76561197999252718", // Wardog  
	"76561198021164444", // Locksage
	"76561198045340049", // Lucile
	"76561198048734420", // M Vakarian Garrus
	"76561198093506585", // Johnny
	"76561198013980159", // badlock
	"76561198104165816", // Ludo 
	"76561198024430025", // Shawn Velentzas
	"76561197989807709", // Psykotik
	"76561198027053448", // Will Velentzas
	"76561198102243902", // Cacatoes 
	"76561198098760949", // Caladrius
	"76561198085324778", // Eric Daniels
	"76561197969806275", // toni velentzas (anto)
	"76561198002689852", // Van lock
	"76561198053632616", // Bobylafrappe (erwan)
	"76561198127501532", // Coralex
	"76561197992644007", // kether (nainportout)
	"76561198016294023", // Epsik 
	"76561198027772712", // Andy
	"76561197971714646", // Tony Packo
	"76561198074894346", // Lost
	"76561198072624346", // Mathieu
	"76561198106094512", // Ashburn
	"76561198021313750", // Camille
	"76561198059691344", // Funeste
	"76561197971110304", // Chris202015
	"" // 
	];

	if(getPlayerUID player in _uidListflic) then 
	{
		_flicsimple =[Cop_1,Cop_2,Cop_3,Cop_4,Cop_5,Cop_6,Cop_7,Cop_8,Cop_9,Cop_10,Cop_11,Cop_12,Cop_13,Cop_14,Cop_15];
		if(player in _flicsimple) then {removeHeadgear player;player removeWeapon "NVGoggles";player addHeadGear "h_beret_blk"; sleep 0.045; player addUniform "U_Rangemaster"; sleep 1; player setObjectTextureGlobal [0, "textures\habit_gendarme.jpg"];};

		_flicspig =[Cop_16,Cop_17,Cop_18,Cop_19,Cop_20,Cop_21,Cop_22,Cop_23,Cop_24];
		if(player in _flicspig) then {removeHeadgear player;player removeWeapon "NVGoggles";removeVest player;execvm "onRespawn_habbit_aleatoire.sqf";;};
	} 
	else 
	{
		cutText["\n\n\n\n\n\n\n Ce slot est reservé ! Venez sur www.sfpteam.fr !!","BLACK FADED",10]; 
		sleep 10;
		cutText["","BLACK IN",6];
		endMission "Ce slot est reservé, contacter Maxou si vous souhaitez jouer ici !";
	};
};
