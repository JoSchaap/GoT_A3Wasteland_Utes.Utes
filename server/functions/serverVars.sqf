//	@file Version: 1.1
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, [GoT] JoSchaap
//	@file Created: 20/11/2012 05:19
//	@file Args:
// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\
#include "setup.sqf"
if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Vars"];

CVG_weapons = [];
CVG_weapons = CVG_rifles;
CVG_weapons = CVG_weapons + CVG_Scoped;
CVG_weapons = CVG_weapons + CVG_Heavy;
CVG_weapons = CVG_weapons + CVG_pistols;
CVG_weapons = CVG_weapons + CVG_Launchers;

sideMissionPos = "";
mainMissionPos = "";

currentVehicles = [];
publicVariable "currentVehicles";
pvar_teamSwitchList = [];
publicVariable "pvar_teamSwitchList";
pvar_teamKillList = [];
publicVariable "pvar_teamKillList";
pvar_beaconListBlu = []; 
publicVariable "pvar_beaconListBlu";
pvar_beaconListRed = []; 
publicVariable "pvar_beaconListRed";
clientMissionMarkers = [];
publicVariable "clientMissionMarkers";
clientRadarMarkers = [];
publicVariable "clientRadarMarkers";
currentDate = [];
publicVariable "currentDate";
currentInvites = [];
publicVariable "currentInvites";
                  
"PlayerCDeath" addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
vehicleTier0 = [
	"c_offroad",
	"B_Quadbike_F", 
	"O_Quadbike_F",
// Small Vehicles
	"MMT_Civ", // Mountainbike
	"TowingTractor",
	"ATV_US_EP1",
	"Old_moto_TK_Civ_EP1",
	"M1030",
	"TT650_Civ",
	"TT650_Gue",
// Civilian cars
	"tractor",
	"car_hatchback",
	"car_sedan",
	"SkodaGreen",
	"SkodaRed",
	"VWGolf",
	"Lada_base",
	"Lada1_TK_CIV_EP1",
	"Lada2_TK_CIV_EP1",
	"Lada2",
	"LadaLM",
	"S1203_TK_CIV_EP1",
	"Volha_1_TK_CIV_EP1",
	"Volha_2_TK_CIV_EP1",
	"VolhaLimo_TK_CIV_EP1",
// Pickups
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open",
	"datsun1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_3_open",	
// Offroads
	"UAZ_Unarmed_TK_CIV_EP1",
	"BAF_Offroad_W"];

// Trucks - Random Spawns
vehicleTier1 = [
// Trucks			
	"V3S_Civ",
	"Ikarus",
	"Ikarus_TK_CIV_EP1",
	"UralCivil",
	"UralCivil2",
	"Ural_UN_EP1",
	"Ural_TK_CIV_EP1"];	

//Military Vehicle List - Random Spawns
vehicleTier2 = [
	"c_offroad",
	// "UAZ_CDF",
	// "UAZ_INS",
	// "UAZ_CDF",
	"UAZ_RU",
	"SUV_PMC",
	"MTVR",
	"BAF_Offroad_W",
	"HMMWV",					
	"S1203_ambulance_EP1",
	"Ural_CDF",
	"Ural_INS",
	"LandRover_base",
	"LandRover_CZ_EP1",
	"LandRover_TK_CIV_EP1",
	"UAZ_Unarmed_UN_EP1"];

//Armed Military Vehicle List - Random Spawns
vehicleTier3 = [
	"B_Hunter_F",
	"O_Ifrit_F", 
	// "ArmoredSUV_PMC",
	"Pickup_PK_GUE",
	"UAZ_MG_TK_EP1",
	"LandRover_MG_TK_INS_EP1",
	"HMMWV_Armored",
	"GAZ_Vodnik"];
                            
//Object List - Random Spawns.
objectTier0 = [
// ARMA 3 ITEMS
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrierBig_F",
// HESCO
	"Land_HBarrier_large",
	"Land_HBarrier1",
	"Land_HBarrier3",
	"Land_HBarrier5",
// ROADBLOCK
	"Hedgehog",
	"Hhedgehog_concrete", // dragon teeth
	"Hhedgehog_concreateBig", // dragon teeth large
	"Fort_EnvelopeBig", // small dirt hump
	"Fort_EnvelopeSmall", // small trench
	// "Fort_Barricade_EP1", // trash baricade
	"Fort_Barricade", // trash pile roadblock			
	"Land_Ind_Timbers", // random trees heap
	"Land_Misc_IronPipes_EP1", // iron pipes heap
	"Land_Pipes_Large_F", // Arma 3 pipes stack
// TRASH
	// "Misc_TyreHeapEP1",
	"Land_Misc_Rubble_EP1", // broken walls rubble pile
	"Land_JunkPile_F",
	"Land_Misc_Garb_Heap_EP1", // garbage heap			
	"Land_Tyres_F",
// BARRIER
	"ZavoraAnim", // Drop Bar roadblock beam
	"Land_Wall_Gate_Ind2Rail_L",
	"Land_Wall_Gate_Village",
	"Land_CncBlock_Stripes", // small striped concrete block
	"Land_CncBlock", // small concrete block
	"Fort_RazorWire", // barbed wire
	"Land_RedWhiteBarrier", // red/white road barrier
// RAMPS // BLOCKS			
	"Land_fort_rampart", // earthern rampart
	"Land_fort_rampart_EP1",			
	 "Land_fort_artillery_nest", // round rampart
	"Land_ConcreteBlock",			           
	"Land_ConcreteRamp", // Concrete Ramp 2 (Steep)
	"RampConcrete", // Concrete Ramp 1 (Low)
// WALLS
	"Concrete_Wall_EP1", // grey stone thin high wall
	"Fence_corrugated_plate", // sheet metal plate wall
	"Fence_Ind_long", // fence with stone beams
	"Fort_StoneWall_EP1", // low stone wall
	"Wall_L_2m5_EP1", // takistani sand wall
// SEARCHLIGHTS			
	"SearchLight", 
	// "SearchLight_CDF",
	// "SearchLight_Gue",
	"SearchLight_UN_EP1",
// TRAINING ITEM
	"Land_prebehlavka", // wooden bridge training item
	"Land_prolejzacka", // wooden window training item
	"Land_WoodenRamp", // small wooden ramp
// HELI PAD
	// "HeliHCivil", // heli pad yellow
	// "HeliH", // heli pad white
	// "HeliHRescue", // heli medevac pad
// MISC			
	"Land_MetalBarrel_F",
	"Land_Misc_ConcPipeline_EP1", // large pipe	
	"Land_Campfire_burning",						
// FLAGS
// SIGNS
	"WarfareBunkerSign", // American flag sign
	"Land_GuardShed", // small guard shed
// FOOD AND DRINKS
	"Land_Sacks_goods_F", // food
	"Land_stand_small_EP1", // food
	"Land_Barrel_water", // water
	"Land_CanisterPlastic_F", // water
	// "Fuel_can",
	// "Suitcase",
	"Barrels", // fuel barrels blue*4
// TOWERS
	// "Land_radar_EP1", // High radar tower. Can't climb in Arma3
	"Land_vez", // Green watchtower					
	"Land_Misc_deerstand",
// CARGO CRATES
	"Fort_Crate_wood", // small wooden crate
	"Misc_cargo_cont_tiny", // blue/grey metal crate
	"Land_CargoBox_V1_F"]; // Arma 3 cargo crate
objectTier1 = [
// LADDERS
	// "Land_ladder_half_EP1",
	// "Land_ladderEP1",	
	"Land_ladder_half",
	"Land_ladder",			
	"Land_leseni2x", // two story scaffolding
	"Land_leseni4x", // four story scaffolding
	"Land_Misc_Scaffolding",
	"Land_Climbing_Obstacle", // two side climbing
// NESTS
	"Land_fortified_nest_small_EP1",
	"Land_fortified_nest_small",
// CAMO NETS
	"Land_CamoNet_NATO",
// "Land_CamoNet_NATO_EP1",
	"Land_CamoNetB_EAST_EP1",
	"Land_CamoNetVar_EAST_EP1",
// HESCO Large
	"Base_WarfareBBarrier10xTall",
	"Base_WarfareBBarrier10x",
	"Base_WarfareBBarrier5x"
];
// Bunkers and Large Items
objectTier2 = [
// DIRTS
	"Dirtmount_EP1", // bumpy dirt hump
	"Land_Dirthump01_EP1",
	"Land_Dirthump02_EP1",
	"Land_Dirthump03_EP1",
	// "Land_Dirthump01",
	// "Land_Dirthump02",
	// "Land_Dirthump03",
	// "HumpsDirt", // bumpy dirt hump		
// BUNKERS			
	"Land_Fort_Watchtower_EP1", //bunker tower
	"Land_Fort_Watchtower",
// BAGFENCE			
	"Land_fort_bagfence_long",
	"Land_fort_bagfence_round",
	"Land_fort_bagfence_corner",
	"Land_BagFenceLong",
	"Land_BagFenceEnd",
	"Land_BagFenceRound",
	"Land_BagFenceShort"
];	
// Bunkers with floor
objectTier3 = [ 
	"WarfareBDepot",
	"WarfareBCamp",
	"Land_fortified_nest_big",
	"MASH" // medical tent
];
//Object List - Random Spawns.
staticWeaponsList = [
// Machine Guns
				"B_MK6",
				"M2StaticMG_US_EP1",
				"M2HD_mini_TriPod",
				"DSHKM_TK_INS_EP1",
				"DSHkM_Mini_TriPod",
				"KORD",
				"KORD_high",
// Grenade Launcher
				// "AGS_Ins",
				// "MK19_TriPod",
				// "AGS_UN_EP1",
// Rocket Launcher
				"Metis",
				"SPG9_CDF",
				"TOW_TriPod",
// Anti-air
				"ZU23_CDF",
				"Stinger_Pod",
				"Igla_AA_pod_East"
// Mortar
				// "2b14_82mm",
				// "M252_US_EP1"
				];

//Object List - Random Helis.
staticHeliList = ["B_MH9_F",
                "MH6J_EP1",
				"An2_TK_EP1"];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = [
//	ARMA 3 WEAPONS
				// "arifle_SDAR_F",
				// "arifle_MXM_F",
				// "arifle_TRG21_F",
				// "arifle_TRG20_F",
				// "arifle_MXC_F",
                // "arifle_MX_SW_F",
                // "arifle_MX_GL_F",
                // "arifle_TRG21_GL_F",
                // "arifle_MX_F",
                // "arifle_Khaybar_F",
                // "arifle_Khaybar_C_F",
                // "arifle_Khaybar_GL_F",
                // "arifle_SDAR_F",
                // "srifle_EBR_F",
                // "LMG_Mk200_F",
                // "hgun_P07_F",
                // "hgun_Rook40_F",
//	RUSSIAN ASSAULT RIFLES
				"AK_107_GL_kobra",
				"AK_107_kobra",
				"AK_107_pso",
				"AK_107_GL_pso",
				"AK_47_M",
				"AK_47_S",
				"AK_74",
				"AK_74_GL",
				"AK_74_GL_kobra",
				"AKS_74_U",
				"AKS_74_UN_kobra", // SD				
//	RUSSIANS BATTLE RIFLES
				"FN_FAL",
				"FN_FAL_ANPVS4",
// CZECH RIFLES
				"Sa58P_EP1",				
				"Sa58V_EP1",
				"Sa58V_CCO_EP1",	
				"Sa58V_RCO_EP1",
// BRITISH WEAPONS
				"BAF_L110A1_Aim",
				"BAF_L7A2_GPMG",
				"BAF_L85A2_RIS_ACOG",
				"BAF_L85A2_UGL_Holo",
				"BAF_L86A2_ACOG",
				"bizon",
				"bizon_silenced",
// M16
				"M16A2",
				"M16A2GL",
				"M16A4",
				"M16A4_ACG_GL",
				"M16A4_ACG",
// M4A1
				"M4A1",
				"M4A1_Aim",
				"M4A1_Aim_camo",
				"M4A1_AIM_SD_camo",	 // silenced
				"M4A1_HWS_GL",
				"M4A1_HWS_GL_camo", 
				"M4A1_HWS_GL_SD_Camo", // silenced
				"M4A1_RCO_GL", 
// M4A3
				"M4A3_CCO_EP1",
				"M4A3_RCO_GL_EP1", 
// M8
				"M8_carbine",
				"M8_carbineG",
				"M8_compact",
// G36
				"G36a",
				"G36A_camo",				
				"G36_C_SD_eotech",
				"G36_C_SD_camo",
				"G36C",
				"G36C_camo",
				"G36K_camo",
				"G36K",
// MK16
				"SCAR_L_CQC",
				"SCAR_L_CQC_CCO_SD",
				"SCAR_L_CQC_EGLM_Holo",
				"SCAR_L_CQC_Holo",
				"SCAR_L_STD_EGLM_RCO",
				"SCAR_L_STD_HOLO",
				"SCAR_L_STD_Mk4CQT",
// MK17
				"SCAR_H_CQC_CCO",
				"SCAR_H_CQC_CCO_SD",
				"SCAR_H_STD_EGLM_Spect", // RCO				
// SNIPER RIFLES
				"Huntingrifle",
				"M24_des_EP1",
				"M24",
				"M40A3",
				"DMR",
				"M4SPR",
				"M107",
				"M110_NVG_EP1",
				"KSVK",
				"SCAR_H_LNG_Sniper",
				"SCAR_H_LNG_Sniper_SD",
				"SVD_des_EP1",
				"SVD",
				"SVD_CAMO",
				"VSS_Vintorez",
// SHOTGUNS
				"M1014",
				"Saiga12K",
// LMG
				"M60A4_EP1",
				"M240",
				"M249",
				"Mk_48",
				"M8_SAW",
				"MG36",
				"MG36_camo",
				"PK",
				"RPK_74",
// MARKSMAN RIFLES
				"M14_EP1",
				"LeeEnfield",
// SMG
				"MP5A5",
				"MP5SD",
// LAUNCHERS
				"M79_EP1",
				"Mk13_EP1",
				"M136",
				"RPG18",
// PISTOLS
				"glock17_EP1",
				"revolver_EP1",
				"revolver_gold_EP1",
				"Sa61_EP1",
				"UZI_EP1",
				"UZI_SD_EP1",
				"Colt1911",
				"M9",
				"M9SD",
				"MakarovSD",
				"Makarov"
				];

vehicleAddition = [
			"Zasleh2",
			"muzzle_snds_H",
			"muzzle_snds_L",
			"muzzle_snds_B",
			"muzzle_snds_H_MG",
			"optic_Arco",
			"optic_Hamr", 
			"optic_Aco", 
			"optic_ACO_grn", 
			"optic_Holosight", 
			"acc_flashlight", 
			"acc_pointer_IR",
			"Medikit",
            "FirstAidKit",
            "ToolKit",
			"Binocular",
			"ItemGPS",
			"NVGoggles"
];

vehicleAddition2 = [
	"Chemlight_blue",
	"Chemlight_green"
];
 
                
MissionSpawnMarkers = [
            ["Mission_1",false],
            ["Mission_2",false],
            ["Mission_3",false],
            ["Mission_4",false],
            ["Mission_5",false],
            ["Mission_6",false],
            ["Mission_7",false],
            ["Mission_8",false],
            ["Mission_9",false],
            ["Mission_10",false],
            ["Mission_11",false],
            ["Mission_12",false],
            ["Mission_13",false],
            ["Mission_14",false],
            ["Mission_15",false],
            ["Mission_16",false],
            ["Mission_17",false],
            ["Mission_18",false],
            ["Mission_19",false],
            ["Mission_20",false]
];
