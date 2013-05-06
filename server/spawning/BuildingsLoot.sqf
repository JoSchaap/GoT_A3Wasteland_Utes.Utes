    //Random weapons and items spawning script for wasteland missions.
    //Author : Ed!

    _odd1 = 60;       //The odds that a building is selected to place loot.
    _odd2 = 30;       //The odds that the selected building's spots will have loot(almost like odds per room).
    _itemtoweaponratio = 55;    //The chances of an item like food,money etc. will spawn instead of a weapon.
    randomweaponspawnminmoney = 50;  //The minimum amount of money that can spawn.
    randomweaponspawnmaxmoney = 200; //The maximum amount of money that can spawn.
    randomweapontestint = 0.01;   //Sets the intervals in which weaponpositions are tested. (Lower = slower, but more accurate. Higher = faster, but less accurate.)


    randomweapon_weaponlist = [
    ["Put","PipeBomb"],
    ["Put","MineE"],
    ["Throw","HandGrenade"],
    ["Throw","SmokeShell"],
    ["Throw","SmokeShellYellow"],
    ["Throw","SmokeShellRed"],
    ["Throw","SmokeShellGreen"],
    ["Throw","SmokeShellPurple"],
    ["Throw","SmokeShellBlue"],
    ["Throw","SmokeShellOrange"],
    ["NVGoggles"],
    ["Binocular"],
    ["Binocular_Vector"]
    ];

    randomweapon_itemlist = [
    "EvMoney",      //Money
    "Land_Teapot_EP1",    //Water
    "Land_Bag_EP1",     //Food
    "Fuel_can",      //Fuel
    "Suitcase",      //Repair kit
    "CZ_VestPouch_EP1",    //Medic kit
    "US_Assault_Pack_EP1",   //Backpack empty
    "US_Assault_Pack_Ammo_EP1",  //Backpack -  4 30Rnd. STANAG, 2 M203 HE, 1 Smoke Grenade, 1 Smoke Grenade Red
    "US_Assault_Pack_AmmoSAW_EP1", //Backpack - 3 M249 Mag., 2 M67 Frag Grenade
    "US_Assault_Pack_Explosives_EP1", //Backpack - 2 mine/2 satchels
    "US_Patrol_Pack_EP1",   //Backpack empty
    "US_Patrol_Pack_Ammo_EP1",  //Backpack - 2 10Rnd. M107, 2 M203 HE, 2 M203 Smoke Red, 2 Mk17 Mag., 1 Mk17 SD Mag.
    "US_Patrol_Pack_Specops_EP1", //Backpack - 1 IR Target Strobe, 2 M67 Frag Grenade, 2 Mk17 Mag., 2 Mk17 SD Mag., 1 Smoke Grenade Red
    "BAF_AssaultPack_special"  //Backpack - 2 Frag Grenades, 2 AT Mines, 2 Satchels
    ];


    randomweaponspawnweapon = {
     _position = _this;
     _selectedgroup = (floor(random(count randomweapon_weaponlist)));
     _weapon = randomweapon_weaponlist select _selectedgroup select 0;
     _weaponholder = createVehicle ["WeaponHolder", _position, [], 0, "CAN_COLLIDE"];
     _weaponholder addWeaponCargoGlobal [_weapon, 1];
     if((count((randomweapon_weaponlist) select _selectedgroup)) > 1) then {
     ffor[{_rm = 0}, {_rm < (2 + floor(random(3)))}, {_rm = _rm + 1}] do {
     _mag = randomweapon_weaponlist select _selectedgroup select ((floor(random((count(randomweapon_weaponlist select _selectedgroup) - 1)))) + 1);
     _weaponholder addMagazineCargoGlobal [_mag, 1]; 
     };
     };
     _weaponholder setPos _position;
    };

    randomweaponspawnitem = {
     _position = _this;
     _selectedgroup = (floor(random(count randomweapon_itemlist)));
     _class = randomweapon_itemlist select _selectedgroup;
     _item = createVehicle [_class, _position, [], 0, "CAN_COLLIDE"];
     if(_class == "EvMoney") then {
      _amountmoney = floor(random(randomweaponspawnmaxmoney - randomweaponspawnminmoney)) + randomweaponspawnminmoney;
      _item setVariable ["money", _amountmoney, true];
      _item setVariable ["owner", "world", true];
     };
     if(_class == "Land_Teapot_EP1") then {
      //nothing to do here
     };
     if(_class == "Land_Bag_EP1") then {
      //nothing to do here
     };
     if(_class == "Fuel_can") then {
      _item setVariable["fuel", true, true];
     };
     if(_class == "Suitcase") then {
      //nothing to do here
     };
     if(_class == "CZ_VestPouch_EP1") then {
      //nothing to do here
     };
     _item setPos _position;
    };


    _pos = [0,0];
    randomweapon_buildings = nearestObjects [_pos, ["house"], 60000];
    sleep 30;
    {
     _building = _x;
     _buildingpos = [];
     _endloop = false;
     _poscount = 0;
     while {!_endloop} do {
      if(((_building buildingPos _poscount) select 0) != 0 && ((_building buildingPos _poscount) select 1) != 0) then {
       _buildingpos = _buildingpos + [_building buildingPos _poscount];
       _poscount = _poscount + 1;
      } else {
       _endloop = true;
      };
     };
     _num = (random 100);
     if (_num < _odd1) then {
      if (count _buildingpos > 0) then
      {  
       for[{_r = 0}, {_r < count _buildingpos}, {_r = _r + 1}] do
       {
        _num2 = (random 100);
        if (_num2 < _odd2) then
        {
         _pos = _buildingpos select _r;
         _posnew = _pos;
         if(_pos select 2 < 0) then
         {
          _pos = [_pos select 0, _pos select 1, 1];
         };
         _z = 0;
         _testpos = true;
         while {_testpos} do {
          if((!lineIntersects[ATLtoASL(_pos), ATLtoASL([_pos select 0, _pos select 1, (_pos select 2) - (randomweapontestint * _z)])]) && (!terrainIntersect[(_pos), ([_pos select 0, _pos select 1, (_pos select 2) - (randomweapontestint * _z)])]) && (_pos select 2 > 0)) then {
           _posnew = [_pos select 0, _pos select 1, (_pos select 2) - (randomweapontestint * _z)];
           _z = _z + 1;
          } else {
           _testpos = false;
          };
         };
         _posnew = [_posnew select 0,_posnew select 1,(_posnew select 2) + 0.05];
         _woi = floor(random(100));
         if(_woi < _itemtoweaponratio) then {
          _posnew call randomweaponspawnitem;
         } else {
          _posnew call randomweaponspawnweapon;
         };
        };
       };
      };    
     };
    }foreach randomweapon_buildings;