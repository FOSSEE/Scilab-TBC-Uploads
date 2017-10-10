// Implementation of example 6.6
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//Energy collected by plate per unit area E
//Temperature of plate T1, Atmospheric temperature T2
T1 = 90+273;//K
T2 = 20+273;//K
W = 1;//kJ/s
E = 1880;//kJ/m^2 h
nmax = 1 - T2/T1;
Qmin = W/nmax;
A = Qmin*3600/E;
printf('Minimum Area of collector required, A = %0.0f m^2',A);
// end