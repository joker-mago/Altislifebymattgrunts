/*
  Fichier: initJoueur.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
if (side player == west) then
{
  player setVariable["thirstLevel",100,true];
  player setVariable["hungryLevel",100,true];
};
if (side player == civilian) then
{
  player setVariable["thirstLevel",100,true];
  player setVariable["hungryLevel",100,true];
};
