//Exa 1.3
clc;
clear;
close;
// Given data
Patm = 101;// kpa
Rho = 13.6 * 10^3;// in kg per m^3
h = 250;// in cm
h = h*10^-2;// in m
g = 9.806;
p = Rho * g * h;// in N/m^2
p= p*10^-3;// in kPa
// Total pressure in tank
p = p + Patm;// in kpa
p = p*10^-3;// in Mpa
disp(p,"Total pressure in tank in Mpa");
