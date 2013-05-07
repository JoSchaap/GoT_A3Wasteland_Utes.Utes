//  @file Version: 1.2
//  @file Name: spawnRandom.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [GoT] JoSchaap
//	@file Created: 28/11/2012 05:19
//	@file Args:

waituntil {!isnil "bis_fnc_init"};

private ["_townName","_randomLoc","_pos"];

_randomLoc = cityList select (random (count cityList - 1));

_pos = getMarkerPos (_randomLoc select 0);
_pos = [_pos,1,(_randomLoc select 1),1,0,0,0] call BIS_fnc_findSafePos;
_pos = [_pos select 0, _pos select 1, (_pos select 2) + 10];

switch (random floor(3)) do {
            case 0: { 
	           player setPos _pos;
            };
            case 1: {
			titleText ["HALO jump activated. Open your chute before you hit the ground!", "PLAIN", 5];
			player setPos [_pos select 0, _pos select 1, (_pos select 2) + 1000]; 
			[player, 1000] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";
            };
            case 2: {
	           player setPos _pos;
            };
            case 3: {
	           player setPos _pos;
            };
	};
            
respawnDialogActive = false;
closeDialog 0;
