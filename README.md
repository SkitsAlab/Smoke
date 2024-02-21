Simple Function adding a Smoke effect when a user fires their weapon.

To utilize this function make a new folder called "mission" in your functions folder. Then download and put the "fn_Smoke.sqf" file into the missions folder.

Then you will want to navigate to config/CfgFunctions.

In that file paste the following code and save.

```hpp
class SKTS
{
	class Mission
	{
		class Smoke{};
	};
};
```

Finally you will want to open you "initPlayerLocal" file and paste the following code.

```sqf
player addEventHandler["Fired",{
params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

if(_weapon != "CUP_srifle_M40A3") exitWith{};

[_unit,_posATL] remoteExec ["SKTS_fnc_Smoke"];
	
}];
```

By default the smoke effect only works on the CUP M40A3 rifle. You can easily change this by editing the following line in "initPlayerLocal"

```sqf
if(_weapon != "CUP_srifle_M40A3") exitWith{};
```

If you want it to apply to all weapons you can simply delete this line and then save.

If you want it to work on a single weapon that is different from the default change "CUP_srifle_M40A3" to the classname of the weapon you would like the smoke effect to come from.
