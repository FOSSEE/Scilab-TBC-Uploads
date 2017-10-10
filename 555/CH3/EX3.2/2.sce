// Implementation of example 3.2
// Basic and Applied Thermodynamics by P.K.Nag
// page 55

clc
clear

p=101.325 // (kN/m^2)
dv=0.6 //(m^3)

Wd=(p*dv);
disp("work done by air =")
disp(Wd)
disp("kJ")
// since the free-air boundary is contracting,the work done by system is negative and surroundings do positive work upon the system
