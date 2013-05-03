//	@file Version: 1.1
//	@file Name: Script Name
//	@file Author: [404] Deadbeat, [GoT] JoSchaap
//	@file Created: DD/MM/YYYY HH:MM
//	@file Args:

if(!X_Server) exitWith {};

private ["_marker","_objtype","_car","_num","_carpos","_type","_townpos"];
_type = _this select 1;
_objPos = _this select 0;

if (_type == 0) then {
_objtype = objectTier0 select (random (count objectTier0 - 1));
_obj = createVehicle [_Objtype,_objPos,[], 50,"None"]; 
};

if (_type == 1) then {
_objtype = objectTier1 select (random (count objectTier1 - 1));
_obj = createVehicle [_Objtype,_objPos,[], 50,"None"]; 
};

if (_type == 2) then {
_objtype = objectTier2 select (random (count objectTier2 - 1));
_obj = createVehicle [_Objtype,_objPos,[], 50,"None"]; 
};

if (_type == 3) then {
_objtype = objectTier3 select (random (count objectTier3 - 1));
_obj = createVehicle [_Objtype,_objPos,[], 50,"None"]; 
};


if(_objtype == "Land_CanisterPlastic_F") then 
{
    _obj setVariable["water",6,true];
};

if(_objtype == "Land_Sacks_goods_F") then 
{
    _obj setVariable["food",10,true];
};
if(_objtype == "Land_Barrel_water") then 
{
    _obj setVariable["water",12,true];
};

if(_objtype == "Land_stand_small_EP1") then 
{
    _obj setVariable["food",5,true];
};

_obj setpos [getpos _obj select 0,getpos _obj select 1,0];
