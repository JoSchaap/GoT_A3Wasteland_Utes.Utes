//	@file Version: 1.0
//	@file Name: vehicleTestSpawn.sqf
//	@file Author: [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

for "_i" from 1 to 770 do
{
	deleteMarker format ["objectSpawn_%1", _i]; // Delete all spawn markers
	deleteMarker format ["vehicleSpawn_%1", _i];
	deleteMarker format ["boxSpawn_%1", _i];
};

diag_log "WASTELAND SERVER - Spawn markers cleaned up";