//	@file Version: 1.0
//	@file Name: randomWeapon.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args: Element 0 = Vehicle.

if(!X_Server) exitWith {};

private ["_car","_mags","_rnd","_weapon","_mag"];

//Grabs carname from array in execVM
_car = _this select 0;
_additionArray0 = vehicleAddition0;
_additionArray1 = vehicleAddition1;
if (random 1 < 0.50) then { _car addWeaponCargoGlobal ["Binocular", 1]};
if (random 1 < 0.05) then { _car addItemCargoGlobal ["NVGoggles", 1]};
if (random 1 < 0.02) then { _car addWeaponCargoGlobal ["Laserdesignator", 1]};

//Get Random Gun From randomWeapons Array.
_weapon = vehicleWeapons select (random (count vehicleWeapons - 1));
_mag = (getArray (configFile >> "Cfgweapons" >> _weapon >> "magazines")) select 0;

_addition0One = _additionArray0 select (random (count _additionArray0 -1));
_additionArray0 = _additionArray0 - [_addition0One];
_addition0Two = _additionArray0 select (random (count _additionArray0 -1));
_additionArray0 = _additionArray0 - [_addition0Two];
_addition1One = _additionArray1 select (random (count _additionArray1 -1));
_additionArray1 = _additionArray1 - [_addition1One];
_addition1Two = _additionArray1 select (random (count _additionArray1 -1));
_additionArray1 = _additionArray1 - [_addition1Two];
_addition1Three = _additionArray1 select (random (count _additionArray1 -1));

//Add guns and magazines, note the Global at the end..
if (random 1 < 0.90) then { _car addMagazineCargoGlobal [_mag,(random 7)]};
if (random 1 < 0.70) then { _car addWeaponCargoGlobal [_weapon,1]};
if (random 1 < 0.70) then { _car addItemCargoGlobal [_addition0One,(random 1)]};
if (random 1 < 0.30) then { _car addItemCargoGlobal [_addition0Two,(random 1)]};
if (random 1 < 0.80) then { _car addMagazineCargoGlobal [_addition1One,(random 2)]};
if (random 1 < 0.40) then { _car addMagazineCargoGlobal [_addition1Two,(random 2)]};
if (random 1 < 0.20) then { _car addMagazineCargoGlobal [_addition1Three,(random 2)]};

_explosive = vehicleExplosive select (random (count vehicleExplosive - 1));
if (random 1 < 0.15) then { _car addMagazineCargoGlobal [_explosive,(random 2)]};