/*
 * Creates a random civilian soldier.
 *
 * Arguments: [ position, group, init, skill, rank]: Array
 *    position: Position - Location unit is created at.
 *    group: Group - Existing group new unit will join.
 *    init: String - (optional, default "") Command to be executed upon creation of unit. Parameter this is set to the created unit and passed to the code.
 *    skill: Number - (optional, default 0.5)
 *    rank: String - (optional, default "PRIVATE")
 */

private ["_soldierTypes","_uniformTypes","_vestTypes","_weaponTypes","_group","_position","_soldier"];

_soldierTypes = ["Ry_PMC","Dixon_PMC","Poet_PMC","Reynolds_PMC","Tanny_PMC","TK_GUE_Soldier_TL_EP1","TK_GUE_Soldier_5_EP1","TK_GUE_Soldier_MG_EP1","TK_GUE_Soldier_Sniper_EP1", "TK_GUE_Soldier_AAT_EP1","TK_GUE_Soldier_AR_EP1","TK_GUE_Soldier_AA_EP1"];
//_pistolTypes = [];
_weaponTypes = ["arifle_TRG20_F","LMG_Mk200_F","arifle_MXM_F","arifle_MX_GL_F","AKS_74_U","RPK_74","SVD","AK_74_GL","AK_47_M","M16A4","M4A1_RCO_GL","AK_107_kobra","AK_107_GL_kobra","G36C","M8_carbine","AA12_PMC","G36a","m8_sharpshooter","BAF_L85A2_UGL_Holo","BAF_L7A2_GPMG","Sa58V_EP1"];
//_launcherType = ["launch_RPG32_F","RPG7V", ];

_group = _this select 0;
_position = _this select 1;
_soldier = _group createUnit [_soldierTypes call BIS_fnc_selectRandom, _position, [], 0, "NONE"];
[_soldier, _weaponTypes call BIS_fnc_selectRandom, 3] call BIS_fnc_addWeapon;

_soldier
