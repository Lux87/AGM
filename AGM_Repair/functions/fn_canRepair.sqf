// by commy2

private ["_vehicle", "_part"];

_vehicle = _this select 0;
_part = _this select 1;

alive player &&
{alive _vehicle} &&
{speed _vehicle == 0} &&
{_vehicle getHitPointDamage _part > 0}
