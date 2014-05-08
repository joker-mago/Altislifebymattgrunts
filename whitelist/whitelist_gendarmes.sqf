/*
  Fichier: whitelist_gendarmes.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
if (!isServer && isMultiplayer) then
{
	_whiteList = [
		""
	];
	waitUntil {!isNull player};
	waitUntil {(getPlayerUID player) != ""};
	_uid = getPlayerUID player;
	if (!(_uid in _whiteList)) then
	{
		sleep 1;
		forceEnd;
	};
};
