//example 12.5 
clc; funcprot(0);
// Initialization of Variables
l=25;
 g = 9.81;
pi=%pi;
rhos=2690;//density of ore
emin=0.6;
emax=0.8;
//calculation
Pmax=rhos*(1-emin)*g*l;
disp(Pmax,"The maximum pressure drop in (N/m^2):");
Pmin=rhos*(1-emax)*g*l;
disp(Pmin,"The minimum pressure drop in (N/m^2):");