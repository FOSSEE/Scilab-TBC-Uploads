// Exa 4.6

clc;
clear;

// Given

l = 25; // length of x-deflection plates in mm
d = 1; // distance between x-deflection plates in mm
s = 200; // distance between screen and centre of plate in mm
Va = 3000; // applied accelerating voltage in volts
Lt = 100; // length of trace in mm

// Solution

// Deflection produced = y/Vd = s*l/(2*d*Va)

y = 1/2 *(Lt);
// Therefore, 
Vd = 2*d*Va*y/(l*s) ;

Vrms = Vd/sqrt(2) ;

printf(' The Vrms of the applied sinusoidal voltage = %.1f V \n',Vd);

Def_sensitivity = l*s/(2*d*Va) ;
printf('  The deflection sensitivity = %.5f mm/V \n',Def_sensitivity);

// The answer provided in the textbook is wrong
