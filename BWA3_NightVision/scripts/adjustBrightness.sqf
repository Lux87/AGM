// by commy2

waitUntil {
	_vehicle = vehicle player;
	_NVGBrightness = _vehicle getVariable "BWA3_NVGBrightness";
	if (isNil "_NVGBrightness") then {
		_vehicle setVariable ["BWA3_NVGBrightness", 50, false];
	};

	waitUntil {
		if (currentVisionMode player == 1) then {
			_NVGBrightness = (_vehicle getVariable "BWA3_NVGBrightness") / 10 + 0.1;
			setAperture _NVGBrightness;
		} else {
			setAperture -1;
		};
		vehicle player != _vehicle
	};
	false
};