// Exa 2.5
clc;
clear;
close;
// Given data
v= 0.9/3;// in m^3/kg
v= 2*v;// in m^3/kg mole (as M_hydrogen = 2)
T=120+273;// in K
R=8314;// in J/kg mole K
a=2.51*10^4;// in Nm^4/(kg mole)^2
b= 0.0262;
// Part (a)
p= R*T/v;// in N/m^2
p= p*10^-5;// in bar
disp(p,"Using perfect gas law the pressure for unit mass of hydrogen in bar is : ")

// Part (b)
p= R*T/(v-b)-a/v^2;// N/m^2
p= p*10^-5;// in bar
disp(p,"Using Van der waals equation, the pressure in bar is : ")
