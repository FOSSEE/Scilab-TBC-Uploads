// Exa 6.21
clc;
clear;
close;
// Given data
T_sat = 99.6;// in degree C
h_fg = 2258;// in kJ/kg
m = 1;// steam output of the boiler in (assumed)
m1 = 0.03;// exhaust steam
x = 0.9;
T1 = 21;// in degree C
Cp = 4.187;// kJ/kg-K
// Formula m1*(Cp*(T_sat-t)+x*h_fg)= m*Cp*(t-T1)
t= (m1*(Cp*T_sat+x*h_fg)+m*Cp*T1)/(Cp*(m+m1))
disp(t,"Temperature of the feed water leaving the heater in degree C is");
