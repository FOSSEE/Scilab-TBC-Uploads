// Exa 4.5

clc;
clear;

// Given

// A CRT under consideration
l = 20; // length of x-deflection plates in mm
d = 5; // distance between x-deflection plates in mm
s = 250; // distance between screen and center of plate in mm
Va = 3000; // applied accelerating voltage in volts

// Solution

Def_sensitivity = l*s/(2*d*Va) ;
printf(' The deflection sensitivity = %.5f mm/V \n',Def_sensitivity);
printf('  The deflection factor = %.1f V/mm \n',1/Def_sensitivity);
