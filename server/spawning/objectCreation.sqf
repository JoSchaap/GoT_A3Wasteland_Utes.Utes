//	@file Version: 1.1
//	@file Name: Script Name
//	@file Author: [404] Deadbeat, [GoT] JoSchaap
//	@file Created: DD/MM/YYYY HH:MM
//	@file Args:

if(!X_Server) exitWith {};

_objPos = _this select 0;
_Objtype = objectList select (random (count objectList - 1));
_obj = createVehicle [_Objtype,_objPos,[], 50,"None"]; 

if(_Objtype == "Land_CanisterPlastic_F") then 
{
    _obj setVariable["water",6,true];
};

if(_Objtype == "Land_Sacks_goods_F") then 
{
    _obj setVariable["food",10,true];
};
if(_Objtype == "Land_Barrel_water") then 
{
    _obj setVariable["water",12,true];
};

if(_Objtype == "Land_stand_small_EP1") then 
{
    _obj setVariable["food",5,true];
};

_obj setpos [getpos _obj select 0,getpos _obj select 1,0];
