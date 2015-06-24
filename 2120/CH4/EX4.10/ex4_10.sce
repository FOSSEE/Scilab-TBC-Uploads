// Exa 4.10
clc;
clear;
close;
// Given data
a= 1160;// in kN/m^2
b= -800;// in kN/m^2
v= -a/(2*b)
Umax= 1.5*(a*v+b*v^2)-85;// in kJ/kg
// For 1.5 kg mass of gas it is
Umax= Umax*1.5;// in kJ/kg
disp(Umax,"The maximum internal energy of the gas in kJ/kg is : ")
