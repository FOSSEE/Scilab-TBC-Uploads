// Exa 9.5
clc;
clear;
close;
// Given data
p1 = 2.5;// Mpa
p1 = p1 * 10^6;// in pa
p1 = p1 * 10^-5;// in bar
p2 = 10;// in kpa
p2 = p2 * 10^3;// in pa
p2 = p2 * 10^-5;// in bar
H1 = 2878;// in kJ/kg at 25 bar and 250°C
H2 = 2583.9;// in kJ/kg at 0.1 bar for dry saturated steam
AHD= H1-H2;// actual heat drop in kJ/kg
H2_desh = 2110;// in kj per kg
IHD = H1 - H2_desh;// Isentropic heat drop in kJ/ kg
Eta_Isentropic = (AHD/IHD) * 100;// in %
disp(Eta_Isentropic,"Isentropic efficiency in % is");
// H1 + v1^2/2 + g*z1 + Q = H2 + v2^2/2 + g*z2 + W
W = H1 - H2;// in kJ/kg (as v1=v2, z1= z2 and Q=0)
disp(W,"Turbine work is in kJ/kg is :");
