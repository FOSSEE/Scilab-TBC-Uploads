clc();
clear;

// To determine the specific heat of air

p = 14.7;                         // Pressure in psi.
Tb = 68;                          // Dry bulb temperature in F
Tw = 50;                          // Wet bulb temperature in F

// In the enthalpy-specific heat diagram, the isotherm 50F in the supersaturated region must be extended until it intersects the isotherm 68F. 
// The point of intersection gives the state of moist air and its specific heat capacity can be read 
s = 0.0037;                      // Specific heat capacity

printf("Tne specific humidity of air is %.4f lb of water per pound of dry air",s);
