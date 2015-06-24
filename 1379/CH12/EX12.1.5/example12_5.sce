

//example 12.5 
clc; funcprot(0);
// Initialization of Variable
l=25;
pi=3.1428;
rhos=2690;//density of ore
emin=0.6;
emax=0.8;
//calculation
Pmax=rhos*(1-emin)*g*l;
disp(Pmax,"The maximum pressure drop in (N/m^2):");
Pmin=rhos*(1-emax)*g*l;
disp(Pmin,"The minimum pressure drop in (N/m^2):");
