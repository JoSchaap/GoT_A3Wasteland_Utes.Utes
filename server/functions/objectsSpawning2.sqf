//	@file Version: 1.0
//	@file Name: vehicleTestSpawn.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_counter","_pos","_newpos","_type","_num","_markerName","_marker","_amountOfVehicles","_hint"];
_type = 0;
_counter = 0;

for "_i" from 1 to 100 do
{
    _pos = getMarkerPos format ["objectSpawn_%1", _i];
	
	_num = floor (random 100);
	if (_num < 100) then {_type = 0;};
	if (_num < 55) then {_type = 1;};
	if (_num < 30) then {_type = 2;};
	if (_num < 5) then {_type = 3;};
    _newpos = [_pos, 21, 40, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
    [_newpos, _type] call objectCreation; 
    
    _counter = _counter + 2;
};

diag_log format["WASTELAND SERVER - %1 Extra Objects Spawned",_counter];