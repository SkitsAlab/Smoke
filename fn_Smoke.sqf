

params["_pers","_bullet"];

private _playerDir = vectorNormalized(_pers weaponDirection currentWeapon _pers);

private _dir = _playerDir apply{_x * 2.5};

private _ps1 = "#particlesource" createVehicleLocal _bullet;
_ps1 setParticleParams [
	["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 9, 16, 0], "", "Billboard",
	10, 8, [0, 0, 0], _dir, 0, 10, 7.9, 0.066, [2, 6, 12],
	[[0.5, 0.5, 0.5, 0], [0.5, 0.5, 0.5, 0.3], [0.5, 0.5, 0.5, 0.2], [0.5, 0.5, 0.5, 0.1], [0.75, 0.75, 0.75, 0.075], [1, 1, 1, 0]],
	[0.25], 1, 0, "", "", _ps1];
_ps1 setParticleRandom [0, [0.25, 0.25, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_ps1 setDropInterval 0.1;

[{deleteVehicle _this;}, _ps1 , 1]call CBA_fnc_waitAndExecute;

