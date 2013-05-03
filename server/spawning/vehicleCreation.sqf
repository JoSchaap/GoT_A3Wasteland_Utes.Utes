
//	@file Version: 1.0
//	@file Name: vehicleCreation.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_marker","_cartype","_car","_num","_carpos","_type","_townpos"];
_type = _this select 1;
_pos = _this select 0;

//Create Civilian Vehicle
if (_type == 0) then {
	//Car Initilization, Pick Car Type.
    _cartype = vehicleTier0 select (random (count vehicleTier0 - 1));
    _car = createVehicle [_cartype,_pos,[], 20,"None"];
	[_car, "nul=[this, 60, 1200, 0, false] execVM 'server\functions\vehicle.sqf'"] spawn fn_vehicleInit; 
	processInitCommands;
    
	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;
	
	//Set Cars Attributes
    _car setFuel (0.60);
    _car setDamage (random 0.70);
    _car setDir (random 360);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set original posistion then add to vehicle array
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,1];
	_car setVelocity [0,0,0.1];
};

//TRUCKS
if (_type == 1) then {
	//Car Initilization, Pick Car Type.
    _cartype = vehicleTier1 select (random (count vehicleTier1 - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
	[_car, "nul=[this, 60, 1200, 0, false] execVM 'server\functions\vehicle.sqf'"] spawn fn_vehicleInit; 
	processInitCommands;
    
	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;

	//Set Cars Attributes
    _car setFuel (0.30);
    _car setDamage (random 0.70);
    _car setDir (random 360);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set authenticity
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,1];
	_car setVelocity [0,0,0.1];
};


//Create Military Vehicle
if (_type == 2) then {
	//Car Initilization, Pick Car Type.
    _cartype = vehicleTier2 select (random (count vehicleTier2 - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
	[_car, "nul=[this, 60, 1200, 0, false] execVM 'server\functions\vehicle.sqf'"] spawn fn_vehicleInit; 
	processInitCommands;
    
	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;

	//Set Cars Attributes
    _car setFuel (0.40);
    _car setDamage (random 0.50);
    _car setDir (random 360);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set authenticity
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,1];
	_car setVelocity [0,0,0.1];
};

//Create Armed Military Vehicle
if (_type == 3) then {
	//Car Initilization, Pick Car Type.
    _cartype = vehicleTier3 select (random (count vehicleTier3 - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
    [_car, "nul=[this, 60, 1200, 0, false] execVM 'server\functions\vehicle.sqf'"] spawn fn_vehicleInit; 
	processInitCommands;

	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;

	//Set Cars Attributes
    _car setFuel (0.20);
    _car setDamage (random 0.30);
    _car setDir (random 360);
    _car setVehicleAmmo (random 0.60);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set original posistion then add to vehicle array
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,1];
	_car setVelocity [0,0,0.1];
};

