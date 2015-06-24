//Exa 6.4
clc;
clear;
close;
//Given data
Q = 88;// in MJ
Q=Q*10^3;// in kJ
T1 = 190;// in °C
T1 = T1 + 273;// in K
T3 = -15;// in °C
T3 = T3 + 273;// in K
Eta_carnot = (T1 - T3)/T1;
Wnet= Eta_carnot * Q;// in kJ
CarnotPower= Wnet/3600;// in kWh
disp(CarnotPower,"The value of Carnot Power in kWh is : ")
disp("As the actual power produced by the invented engine is more than the Carnot Power, ");
disp("so inverter claim is ")
disp(" not true")
