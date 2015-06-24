// Exa 5.14
clc;
clear;
close;
// Given data
T1 = 15;// in degree C
T1 = T1 + 273;// in K
P1 = 1;// in bar
P2 = 5;// in bar
Gamma = 1.4;
T2 = T1 * ((P2/P1)^((Gamma-1)/Gamma));// in K
C_P = 1.003;// in kJ/kg-K
CompWork = C_P*(T2 - T1);// Compressure work in kJ/kg
T3 = 800;// in degree C
T3 = T3 + 273;// in K
T4 = T3/((P2/P1)^((Gamma-1)/Gamma));// in K
T4= round(T4);// in K
turbineWork = C_P * (T3-T4);// Turbine work in kJ/kg
Q = C_P * (T3-T2);// Heat input in kJ/kg
W = turbineWork-CompWork;// in kJ/kg
W= round(W);//in kJ/kg
Eta = (W/Q)* 100;// in %
disp(round(Eta),"the thermal efficiency of plant in % is");
disp("Output of gas turbine installation is "+string(W)+" kW per kg of flow per second")
