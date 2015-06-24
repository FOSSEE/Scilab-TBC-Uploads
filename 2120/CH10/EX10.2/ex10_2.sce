// Exa 10.2
clc;
clear;
close;
// Given data
h1 = 3015;// in kJ/kg
h2 = 2326;// in kJ/kg
h3 = 113;// in kJ/kg
h4 = 114.95;// in kJ/kg
Q = h1 - h4;// in kJ/kg
disp(Q,"Heat supplied to the boiler in kJ/kg is");
W_T = h1 - h2;/// in kJ/kg
disp(W_T,"Work developed by turbine in kJ/kg is : ");
W_P = ( h1 - h3) - Q;// in kJ/kg
disp(W_P,"Work absorbed by pump in kJ/kg is : ");
Eta = (W_T - W_P)/Q*100;// in %
disp(Eta,"Efficiency of flow system in % is : ");
