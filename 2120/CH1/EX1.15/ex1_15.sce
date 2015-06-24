// Exa 1.15
clc;
clear;
close;
// Given data
P_gauge = 90;// in cm of hg
P_atm = 760;// in mm of hg
P_atm = 76;// in cm of hg
P_abs = P_gauge + P_atm;// in cm of hg
P_abs = P_abs * (101.32/76);// in kPa
disp(P_abs,"Reading of pressure in kPa");
// Part (b)
P_vacuum = 40;// in cm of hg
P_abs = P_atm - P_vacuum;// in cm of hg
P_abs = P_abs * (101.32/76);// in kpa
disp(P_abs,"Reading of pressure to kpa");
// Part (c)
Rho = 1000;// in kg per m^3
g = 9.81;// 
h = 1.2;// in m 
P_gauge = Rho * g * h;// in N m^2
P_gauge= P_gauge*10^-3;// in kPa
P_atm = 101.32;// in kPa
P_abs = P_gauge + P_atm;// in kpa
disp(P_abs,"Reading of pressure in kPa");
