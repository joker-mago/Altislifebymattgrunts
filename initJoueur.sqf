/*
  Fichier: initJoueur.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
_state = _this;

if (_state == 1) then
{
  player setVariable["thirstLevel",100,true];
  player setVariable["hungryLevel",100,true];
  player setVariable["dormir",100,true];

  player setVariable["mon_argent_banque",10000,true];
  player setVariable["mon_argent_poche",2500,true];
  player setVariable["ma_paye",0,true];
  player setVariable["mes_impots",0,true];
  
  if (side player == west) then
  {
    
  };
  if (side player == civilian) then
  {
    player setVariable["totalspace",50,true];
    player setVariable["usedspace",0,true];
  };
};
if (_state == 2) then
{
  //Pas sur
};

player setVariable["thirstLevel",100,true];
player setVariable["hungryLevel",100,true];

player setVariable["mon_argent_poche",0,true];

waitUntil {alive player};

if (side player == civilian) then
{
  player addAction ["Mon Argent", "banque\bankmenu.sqf", [], 999999, false, false, "", ""];
};
