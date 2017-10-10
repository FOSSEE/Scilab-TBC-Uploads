// Implementation of example 6.2
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//Temperature T, Rate of heat transfer Q, Power W
T1 = 30+273;//K
T2 = -15+273;//K
Q2 = 1.75;//kJ/s
//For minimum power requirement
Q1 = Q2*T1/T2;
W = Q1 - Q2;
printf('Least power necessary to pump the heat continuously is %0.2f kW',W);
// end