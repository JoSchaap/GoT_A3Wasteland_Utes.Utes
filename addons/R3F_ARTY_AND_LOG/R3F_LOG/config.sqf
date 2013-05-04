/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs = [
	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F",
	"Truck",
    "Car",
	"TowingTractor",
	"Tractor",
	"BRDM2_Base",
	"BTR90_Base",
	"GAZ_Vodnik_HMG",
	"LAV25_Base",
	"StrykerBase_EP1",
	"MLRS",
	"Fishing_Boat",
	"RHIB",
	"Smallboat_1",
	"smallboat_2"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = [
	"c_offroad",
	"O_Ifrit_MG_F",
	"B_Hunter_F",
	"B_Hunter_RCWS_F",
	"B_Hunter_HMG_F",
	"O_Ifrit_F",
	"O_Ifrit_GMG_F",
	"HMMWV_Base",
	"Truck",
	"GAZ_Vodnik_HMG",
	"BRDM2_Base",
	"BTR40_MG_base_EP1",
	"Ship",
	"Ikarus",
	"Tractor",
	"UAZ_Base",
	"SkodaBase",
	"hilux1_civil_1_open",
	"Pickup_PK_base",
	"Offroad_DSHKM_base",
	"Lada_base",
	"VWGolf",
	"hilux1_civil_3_open_EP1",
	"LandRover_Base",
	"S1203_TK_CIV_EP1",
	"ArmoredSUV_Base_PMC",
	"SUV_Base_EP1",
	"Volha_TK_CIV_Base_EP1",
	"BAF_Jackal2_BASE_D",
//	"ATV_Base_EP1",
	"An2_Base_EP1",
	"M119",
	"D30_base",
	"ZU23_base",
	"Land_fortified_nest_big",
	"Land_ConcreteRamp",
	"RampConcrete",
	"Land_ConcreteBlock",
	"Land_Fort_Watchtower"
//	"Land_vez"
];

/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des v�hicules a�riens pouvant h�liporter des objets h�liportables.
 */
R3F_LOG_CFG_heliporteurs = [
	"O_Ka60_Unarmed_F",
	"O_Ka60_F",
	"CH47_base_EP1",
	"Mi17_base",
	"Mi24_Base",
	"UH1H_base",
	"UH1_Base",
	"UH60_Base",
	"MV22",
	"BAF_Merlin_HC3_D",
	"Ka60_Base_PMC",
	"Mi24_Base"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_objets_heliportables = [
	"c_offroad",
	"O_Ifrit_MG_F",
	"B_Hunter_F",
	"B_Hunter_RCWS_F",
	"B_Hunter_HMG_F",
	"O_Ifrit_F",
	"O_Ifrit_GMG_F",
	"HMMWV_Base",
	"Truck",
	"GAZ_Vodnik_HMG",
	"BTR40_MG_base_EP1",
	"Ship",
	"Ikarus",
	"Tractor",
	"UAZ_Base",
	"SkodaBase",
	"hilux1_civil_1_open",
	"Pickup_PK_base",
	"Offroad_DSHKM_base",
	"Lada_base",
	"VWGolf",
	"hilux1_civil_3_open_EP1",
	"LandRover_Base",
	"S1203_TK_CIV_EP1",
	"ArmoredSUV_Base_PMC",
	"SUV_Base_EP1",
	"Volha_TK_CIV_Base_EP1",
	"BAF_Jackal2_BASE_D",
	"M119",
	"D30_base",
	"ZU23_base",
	"USBasicAmmunitionBox",
	"RUBasicAmmunitionBox",
	"LocalBasicAmmunitionBox",
	"GuerillaCacheBox",
	"ReammoBox_EP1"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/


R3F_LOG_CFG_transporteurs = [
// Arma 3 vehicles
	["c_offroad", 30],
	["O_Ifrit_MG_F", 25],
	["B_Hunter_F", 25],
	["B_Hunter_RCWS_F", 25],
	["B_Hunter_HMG_F", 25],
	["O_Ifrit_F", 25],
	["O_Ifrit_GMG_F", 25],
	["O_Ka60_Unarmed_F", 20],
	["B_MH9_F", 10],
	["O_Ka60_F", 20],
	["O_Quadbike_F", 5],
	["B_Quadbike_F", 5],
	["B_AH9_F", 10],
	
// Arma 2 vehicles

// Helicopters		
	["CH47_base_EP1", 80],
	["AH6_Base_EP1", 25],
	["Mi17_base", 60],
	["Mi24_Base", 50],
	["UH1H_base", 35],
	["UH1_Base", 30],
	["UH60_Base", 40],
	["An2_Base_EP1", 40],
	["C130J", 150],
	["MV22", 80],
	
// Small vehicles
	["TowingTractor", 5],
	["ATV_Base_EP1", 5],
	["ATV_US_EP1", 5],
	["Old_moto_TK_Civ_EP1", 5],
	["M1030", 5],			
	["tractor", 5], 
	["TT650_Civ", 5],
	["TT650_Gue", 5],
// Civilian cars
	["car_hatchback", 8],
	["car_sedan", 8],
	["SkodaGreen", 8],
	["SkodaRed", 8],
	["VWGolf", 6],
	["Lada_base", 8],
	["Lada1_TK_CIV_EP1", 8],
	["Lada2_TK_CIV_EP1", 8],
	["Lada2", 8],
	["LadaLM", 8],
	["S1203_TK_CIV_EP1", 10],
// Pickups
	["hilux1_civil_1_open", 12],
	["hilux1_civil_2_covered", 12],
	["hilux1_civil_3_open_EP1", 12],
	["datsun1_civil_1_open", 12],
	["datsun1_civil_2_covered", 12],
	["datsun1_civil_3_open", 12],
// Offroads
	["UAZ_Unarmed_TK_CIV_EP1", 12],
	["BAF_Offroad_W", 12],
// Trucks
	["V3S_Civ", 50],
	["Ikarus", 50],
	["Ikarus_TK_CIV_EP1", 50],
	["UralCivil", 35],
	["UralCivil2", 35],
	["Ural_UN_EP1", 35],
	["Ural_TK_CIV_EP1", 35],
// Armored Vehicles
	["HMMWV_Avenger", 5],
	["HMMWV_M998A2_SOV_DES_EP1", 12],
	["HMMWV_Base", 18],	

	["LandRover_Base", 15],
	["Offroad_DSHKM_base", 15],
	["Pickup_PK_base", 15],
	["S1203_TK_CIV_EP1", 20],
	["SUV_Base_EP1", 15],
	["SkodaBase", 10],
	["TowingTractor", 5],
	["Tractor", 5],
	["KamazRefuel", 10],
	["Kamaz_Base", 50],
	["MAZ_543_SCUD_Base_EP1", 10],
	["MtvrRefuel", 10],
	["MTVR", 50],
	["GRAD_Base", 10],
	["Ural_Base", 35],
	["Ural_ZU23_Base", 20],
	["Ural_CDF", 50],
	["Ural_INS", 50],
	["UralRefuel_Base", 10],
	["V3S_Refuel_TK_GUE_EP1", 10],
	
	["V3S_Base_EP1", 50],
	["UAZ_Base", 10],
	
	["Volha_TK_CIV_Base_EP1", 8],
	["BRDM2_Base", 15],
	["BTR40_MG_base_EP1", 15],
	["BTR60_TK_EP1", 25],
	["BTR90_Base", 25],
	["GAZ_Vodnik_HMG", 25],
	["LAV25_Base", 25],
	["StrykerBase_EP1", 25],

	["Motorcycle", 5],
	["2S6M_Tunguska", 10],
	["M113_Base", 12],
	["Ship", 10],
	["Fort_Crate_wood", 20],
	["Misc_cargo_cont_tiny", 40],
	["BAF_Merlin_HC3_D", 75],
	["Ka60_Base_PMC", 40],
	["ArmoredSUV_Base_PMC", 12],
	["BAF_Jackal2_BASE_D", 15]
];

 
R3F_LOG_CFG_objets_transportables =  [
	["Box_East_Support_F", 5],
	["Box_East_Wps_F", 5],
	["Box_East_WpsSpecial_F", 5],
	["Box_NATO_Support_F", 5],
	["Box_NATO_Wps_F", 5],
	["Box_NATO_WpsSpecial_F", 5],
	["Land_CanisterPlastic_F", 1],
	["Land_Sacks_goods_F", 2],
	["Land_MetalBarrel_F", 2],
	["Land_HBarrierBig_F", 5],
	["Land_ToiletBox_F", 6],

	["Land_HBarrier_3_F", 3],
    ["Land_HBarrier_5_F", 5],
    ["Land_HBarrier_1_F", 1],
    ["O_Quadbike_F", 10],
    ["B_Quadbike_F", 10],

	["Land_Coil_F", 5],
	["Land_Pipes_Large_F", 5],
	["Land_CargoBox_V1_F", 5],

// Arma 2 Objects
// HESCO
	["Land_HBarrier_large", 4],
	["Land_HBarrier1", 2],
	["Land_HBarrier3", 5],
	["Land_HBarrier5", 7],
	["Base_WarfareBBarrier10xTall", 15],
	["Base_WarfareBBarrier10x", 10],
	["Base_WarfareBBarrier5x", 7],
// BAGFENCE			
	["Land_fort_bagfence_long", 2],
	["Land_fort_bagfence_round", 3],	
	["Land_fort_bagfence_corner", 3],
	["Land_BagFenceLong", 3],
	["Land_BagFenceEnd", 1],
	["Land_BagFenceRound", 3],
	["Land_BagFenceShort", 2],	
// BUNKERS			
	["Land_Fort_Watchtower_EP1", 8], //bunker tower
	["Land_Fort_Watchtower", 8],
	["WarfareBDepot", 30],
	["WarfareBCamp", 15],		
// NESTS
	["Land_fortified_nest_small_EP1", 6],
	["Land_fortified_nest_big", 15],
	["Land_fortified_nest_small", 6],
// ROADBLOCK
	["Hedgehog", 3],
	["Hhedgehog_concrete", 5],// dragon teeth
	["Hhedgehog_concreateBig", 8],// dragon teeth large
	["Fort_EnvelopeBig", 2], // small dirt hump
	["Fort_EnvelopeSmall", 1],// small trench
	// "Fort_Barricade_EP1", // trash baricade
	["Fort_Barricade", 5],// trash pile roadblock			
	["Land_Ind_Timbers", 10], // random trees heap
	["Land_Misc_IronPipes_EP1", 10],// iron pipes heap
	["Land_Pipes_Large_F", 10],// Arma 3 pipes stack	
// TRASH
	// "Misc_TyreHeapEP1",
	["Land_Misc_Rubble_EP1", 2],// broken walls rubble pile
	["Land_Misc_Garb_Heap_EP1", 3], // garbage heap			
	["Land_Tyres_F", 3],
	["Land_JunkPile_F", 3],
// BARRIER
	["ZavoraAnim", 3],// Drop Bar roadblock beam
	["Land_Wall_Gate_Ind2Rail_L", 3],
	["Land_Wall_Gate_Village", 3],
	["Land_CncBlock_Stripes", 2], // small striped concrete block
	["Land_CncBlock", 2], // small concrete block
	["Fort_RazorWire", 2],// barbed wire
	["Land_RedWhiteBarrier", 2],// red/white road barrier	
// RAMPS // BLOCKS			
	["Land_fort_rampart", 6], // earthern rampart
	["Land_fort_rampart_EP1", 6],		
	["Land_fort_artillery_nest", 10], // round rampart
	["Land_ConcreteBlock", 15],		           
	["Land_ConcreteRamp", 10],// Concrete Ramp 2 (Steep)
	["RampConcrete", 10],// Concrete Ramp 1 (Low)
// WALLS
	["Concrete_Wall_EP1", 4], // grey stone thin high wall
	["Fence_corrugated_plate", 2], // sheet metal plate wall
	["Fence_Ind_long", 1], // fence with stone beams
	["Fort_StoneWall_EP1", 2], // low stone wall
	["Wall_L_2m5_EP1", 3], // takistani sand wall	
// LADDERS
	// "Land_ladder_half_EP1",
	// "Land_ladderEP1",	
	["Land_ladder_half", 3],
	["Land_ladder", 5],
	["Land_leseni2x", 8], // two story scaffolding
	["Land_leseni4x", 15], // four story scaffolding
	["Land_Misc_Scaffolding", 5],
	["Land_Climbing_Obstacle", 3], // two side climbing
// CAMO NETS
	["Land_CamoNet_NATO", 3],
	["Land_CamoNet_NATO_EP1", 3],
	["Land_CamoNetB_EAST_EP1", 3],
	["Land_CamoNetVar_EAST_EP1", 3],
// SEARCHLIGHTS			
	["SearchLight", 2],
	["SearchLight_CDF", 2],
	["SearchLight_Gue", 2],
	["SearchLight_UN_EP1", 2],
// DIRTS
	["Dirtmount_EP1", 12],// bumpy dirt hump
	["Land_Dirthump01_EP1", 15],
	["Land_Dirthump02_EP1", 15],
	["Land_Dirthump03_EP1", 15],
	["Land_Dirthump01", 15],
	["Land_Dirthump02", 15],
	["Land_Dirthump03", 15],
	["HumpsDirt", 15], // bumpy dirt hump				
// TRAINING ITEM
	["Land_prebehlavka", 4], // wooden bridge training item
	["Land_prolejzacka", 5], // wooden window training item
	["Land_WoodenRamp", 2], // small wooden ramp
// HELI PAD
	["HeliHCivil", 1], // heli pad yellow
	["HeliH", 1], // heli pad white
	["HeliHRescue", 1],// heli medevac pad
// MISC			
	["Land_MetalBarrel_F", 2],
	["Land_Misc_ConcPipeline_EP1", 4], // large pipe	
	["Land_Campfire_burning", 1],				
// SIGNS
	["WarfareBunkerSign", 1], // American flag sign
	["Land_GuardShed", 3], // small guard shed	
// TENTS
	["MASH", 5], // medical tents	
// FOOD AND DRINKS
	["Land_Sacks_goods_F", 2], // food
	["Land_stand_small_EP1", 1],// food
	["Land_Barrel_water", 2], // water
	["Land_CanisterPlastic_F", 1], // water
	["Barrels", 5], // fuel barrels blue*4
	["Suitcase", 1],
	["Fuel_can", 1],
// TOWERS
	// "Land_radar_EP1", // High radar tower. Can't climb in Arma3
	// "Land_vez", // Green watchtower					
	["Land_Misc_deerstand", 3],
// CARGO CRATES
	["Fort_Crate_wood", 4], // small wooden crate
	["Misc_cargo_cont_tiny", 8],// blue/grey metal crate
	["Land_CargoBox_V1_F", 12],// Arma 3 cargo crate	
// SMALL VEHICLES
	["MMT_Civ", 1], // Mountainbike
	["TowingTractor", 10],
	["ATV_US_EP1", 5],
	["Old_moto_TK_Civ_EP1", 3],
	["M1030", 3],
	["TT650_Civ", 3],
	["TT650_Gue", 3],
// STATIONARY GUNS
	["Igla_AA_pod_East", 7],
	["Stinger_Pod_base", 7],
	["Metis", 4],
	["SPG9_base", 4],
	["TOW_TriPod", 5],
	["TOW_TriPod_Base", 5],
	["AGS_base", 4],
	["MK19_TriPod", 4],
	["DSHKM_base", 4],
	["KORD_Base", 5],
	["M2StaticMG_base", 4],
	["WarfareBMGNest_M240_base", 10],
	["WarfareBMGNest_PK_Base", 10],
	["2b14_82mm", 4],
	["M252", 4],
	["Warfare2b14_82mm_Base", 4],
	["StaticSEARCHLight", 4],
// AMMO BOXES
	["RUVehicleBox", 12],
	["TKVehicleBox_EP1", 12],
	["USVehicleBox_EP1", 12],
	["USVehicleBox", 12],
	["USBasicAmmunitionBox", 5],
	["RUBasicAmmunitionBox", 5],
	["LocalBasicAmmunitionBox", 5],
	["GuerillaCacheBox", 5],
	["ReammoBox_EP1", 5],
	["ReammoBox", 5],
// FURNITURE
	["Desk", 1],
	["FoldChair", 1],
	["FoldTable", 1],
	["BarrelBase", 2],
	["Notice_board", 1],
	["SmallTable", 1],
	["Notebook", 1],
	["Land_Chair_EP1", 1]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

R3F_LOG_CFG_objets_deplacables = [
// 	ARMA 3 ITEMS
	"Box_East_Support_F",
	"Box_East_Wps_F",
	"Box_East_WpsSpecial_F",
	"Box_NATO_Support_F",
	"Box_NATO_Wps_F",
	"Box_NATO_WpsSpecial_F",
	"Land_CanisterPlastic_F",
	"Land_Sacks_goods_F",
	"Land_MetalBarrel_F",
	"Land_HBarrierBig_F",
	"Land_ToiletBox_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
    "Land_HBarrier_5_F",
	"Land_Tyres_F",
	"Land_JunkPile_F",
    "O_Quadbike_F",
    "B_Quadbike_F",
	"Land_Pipes_Large_F",
	"Land_CargoBox_V1_F",
	
// MOVEABLE VEHICLES
	"Motorcycle",
	"Old_moto_TK_Civ_EP1",
	"ATV_US_EP1",
	"MMT_Civ",

// HESCO
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrierBig_F",
	"Land_HBarrier_large",
	"Land_HBarrier1",
	"Land_HBarrier3",
	"Land_HBarrier5",
	"Base_WarfareBBarrier10xTall",
	"Base_WarfareBBarrier10x",
	"Base_WarfareBBarrier5x",
// BAGFENCE			
	"Land_fort_bagfence_long",
	"Land_fort_bagfence_round",
	"Land_fort_bagfence_corner",
	"Land_BagFenceLong",
	"Land_BagFenceEnd",
	"Land_BagFenceRound",
	"Land_BagFenceShort",			
// BUNKERS			
	"Land_Fort_Watchtower_EP1", //bunker tower
	"Land_Fort_Watchtower", 
	"WarfareBDepot",
	"WarfareBCamp", 			
// NESTS
	"Land_fortified_nest_small_EP1",
	"Land_fortified_nest_big",
	"Land_fortified_nest_small",			
// ROADBLOCK
	"Hedgehog",
	"Hhedgehog_concrete", // dragon teeth
	"Hhedgehog_concreateBig", // dragon teeth large
	"Fort_EnvelopeBig", // small dirt hump
	"Fort_EnvelopeSmall", // small trench
	"Fort_Barricade_EP1", // trash baricade
	"Fort_Barricade", // trash pile roadblock
	"Misc_TyreHeapEP1",			
	"Land_Ind_Timbers", // random trees heap
	"Land_Misc_IronPipes_EP1", // iron pipes heap
	"Land_Pipes_Large_F", // Arma 3 pipes stack
// TRASH
	"Land_Misc_Rubble_EP1", // broken walls rubble pile
	"Land_JunkPile_F",
	"Land_Tyres_F",
	"Land_Misc_Garb_Heap_EP1", // garbage heap			
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
// LADDERS
	"Land_ladder_half_EP1",
	"Land_ladderEP1",	
	"Land_ladder_half",
	"Land_ladder",			
	"Land_leseni2x", // two story scaffolding
	"Land_leseni4x", // four story scaffolding
	"Land_Misc_Scaffolding",
	"Land_Climbing_Obstacle", // two side climbing
// CAMO NETS
	"Land_CamoNet_NATO",
	"Land_CamoNet_NATO_EP1",
	"Land_CamoNetB_EAST_EP1",
	"Land_CamoNetVar_EAST_EP1",			
// SEARCHLIGHTS			
	"SearchLight", 
	"SearchLight_CDF",
	"SearchLight_Gue",
	"SearchLight_UN_EP1",
// DIRTS
	"Dirtmount_EP1", // bumpy dirt hump
	"Land_Dirthump01_EP1",
	"Land_Dirthump02_EP1",
	"Land_Dirthump03_EP1",
	"Land_Dirthump01",
	"Land_Dirthump02",
	"Land_Dirthump03",
	"HumpsDirt", // bumpy dirt hump			
// TRAINING ITEM
	"Land_prebehlavka", // wooden bridge training item
	"Land_prolejzacka", // wooden window training item
	"Land_WoodenRamp", // small wooden ramp
// HELI PAD
	"HeliHCivil", // heli pad yellow
	"HeliH", // heli pad white
	"HeliHRescue", // heli medevac pad
// CARGO CRATES
	"Fort_Crate_wood", // small wooden crate
	"Misc_cargo_cont_tiny", // blue/grey metal crate
	"Land_CargoBox_V1_F", // Arma 3 cargo crate
	"Land_cargo_addon02_V2_F",
// MISC			
	"Land_MetalBarrel_F",
	"Land_Misc_ConcPipeline_EP1", // large pipe	
	"Land_Campfire_burning",						
// FLAGS
// SIGNS
	"WarfareBunkerSign", // American flag sign
	 "Land_GuardShed", // small guard shed
// TENTS
	"MASH", // medical tents
// FOOD AND DRINKS
	"Land_Sacks_goods_F", // food
	"Land_stand_small_EP1", // food
	"Land_Barrel_water", // water
	"Land_CanisterPlastic_F", // water
	"Barrels", // fuel barrels blue*4
// TOWERS
	"Land_radar_EP1", // High radar tower. Can't climb in Arma3
//	"Land_vez", // Green watchtower					
	"Land_Misc_deerstand",
			
// Machine Guns
				"B_MK6",
				"M2StaticMG_US_EP1",
				"M2HD_mini_TriPod",
				"DSHKM_TK_INS_EP1",
				"DSHkM_Mini_TriPod",
				"KORD",
				"KORD_high",
// Grenade Launcher
				"AGS_Ins",
				"MK19_TriPod",
				"AGS_UN_EP1",
// Rocket Launcher
				"Metis",
				"SPG9_CDF",
				"TOW_TriPod",
// Anti-air
				"ZU23_CDF",
				"Stinger_Pod",
				"Igla_AA_pod_East",
// Mortar
				"2b14_82mm",
				"M252_US_EP1"
	
];
