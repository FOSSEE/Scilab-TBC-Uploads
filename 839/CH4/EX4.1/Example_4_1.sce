//clear//
clear;
clc;

//Example 4.1

// (a)
// density of the fluid
rho = 0.887*62.37;// [lb/ft^3]
// total volumetric flow rate
q = 30*60/7.48; //[ft^3/hr]
// mass flow rate in pipe A and pipe B is same
mdot  = rho*q //[lb/hr]
// mass flow rate in each pipe of C is half of the total flow
mdot_C = mdot/2 //[lb/hr]
disp('lb/hr',mdot,'mass flow rate pipe A = ')
disp('lb/hr',mdot,'mass flow rate pipe B = ')
disp('lb/hr',mdot_C,'mass flow rate pipe C = ')

// (b)
// Using Eq.(4.4),
// velocity through pipe A
V_Abar = 240.7/(3600*0.0233) //[ft/s]

// velocity through pipe B
V_Bbar = 240.7/(3600*0.0513) //[ft/s]

// velocity through each pipe of C
V_Cbar = 240.7/(2*3600*0.01414) //[ft/s]

disp('ft/s',V_Abar,'velocity through pipe A = ')
disp('ft/s',V_Bbar,'velocity through pipe B = ')
disp('ft/s',V_Cbar,'velocity through pipe C = ')

// (c)
// Using Eq.(4.8),
// mass velocity through pipe A
GA = mdot/0.0233 // [kg/m^2-s]

// mass velocity through pipe B
GB = mdot/0.0513 //[kg/m^2-s]

// mass velocity through each pipe of C
GC = mdot/(2*0.01414) //[kg/m^2-s]

disp('kg/m^2-s',GA,'mass velocity through pipe A = ')
disp('kg/m^2-s',GB,'mass velocity through pipe B = ')
disp('kg/m^2-s',GC,'mass velocity through pipe C = ')
