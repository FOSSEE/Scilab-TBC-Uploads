// Exa 2.14
clc;
clear;
close;
// Given data
m=12;// in kg mol
v=723.7;// in m^3
T=140;// in °C
T=T+273;// in K
rho= 0.644;// in kg/m^3
Ro= 8314;// in J/kg-mole K
// rho= m/v, where m in Kg , so rho= m*M/v
M= rho*v/m;
m= m*M;// in kg
disp(M,"Molecular weight is : ")

// Part (b)
R= Ro/M;// in J/kg K
disp(R*10^-3,"Gas constant in kJ/kg K")

// Part(c)
p= m*R*T/v;// in N/m^2
p=p*10^-5;// in bar
disp(p,"The pressure of the gas in bar is : ")
