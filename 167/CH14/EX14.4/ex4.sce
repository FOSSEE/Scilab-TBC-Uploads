//example 4
// The Use of the Psychrometric Chart
clear
clc
disp('At a given total pressure, the state of atmospheric air is completely specifiedby two independent properties such as the dry-bulb temperature and the relative humidity. Other properties are determined by directly reading their values at the specified state.')
disp('The specific humidity is determined by drawing a horizontal line from the specified state to the right until it intersects with the v axis')
v=0.0142 // in kg water/kg dry air
disp('The enthalpy of air per unit mass of dry air is determined by drawing a line parallel to the h=constant lines from the specific state until it intersects the enthalpy scale, giving')
h=71.5 // in kJ/kg dry air
disp('The wet-bulb temperature is determined by drawing a line parallel to the Twb=constant lines from the specified state until it intersects the saturation line, giving')
Twb=24 // in Celsius
disp('The dew-point temperature is determined by drawing a horizontal line from the specified state to the left until it intersects the saturation line, giving')
Tdp=19.4// in Celsius
disp('The specific volume per unit mass of dry air is determined by noting the distances between the specified state and the v=constant lines on both sides of the point. The specific volume is determined by visual interpolation to be')
v=0.893 // in m3/kg dry air