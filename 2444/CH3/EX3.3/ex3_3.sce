// Exa 3.3
clc;
clear;
close;
format('v',8)
// Given data
Eta =628;// in J/m^3
Bmax = 1.3;// in T
f = 25;// in Hz
m = 50;// in kg
rho = 7.8*10^3;// in kg/m^3
V = m/rho;// in m^3
H = round(Eta*(Bmax^1.6)*f*V);// Hystersis loss in J/s
H = H * 60 *60;// Hystersis loss in J/hour
disp(H,"The Hystersis loss per hour in J is");
h = Eta*(Bmax^1.6);// Hystersis loss/m^3/cycle
// h = x*y*area of B_H loop
x = 12.5;// in AT/m
y = 0.1;// in T
Area = h/(x*y);// in cm^2
format('v',5)
disp(Area,"The area of B-H loop in cm^2 is");
