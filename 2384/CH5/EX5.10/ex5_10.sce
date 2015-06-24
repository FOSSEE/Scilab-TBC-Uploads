// Exa 5.10
clc;
clear;
close;
format('v',6)
// Given data
P = 12;// in kW
P = P * 10^3;// in W
V_L = 400;// in V
I_L = 20;// in A
I_Ph = I_L;// in A
disp(I_Ph,"The phase current in A is");
V_Ph = V_L/sqrt(3);// in V
Z_Ph = V_Ph/I_Ph;// in ohm
disp(Z_Ph,"The impedance of load in ohm is");
// P = sqrt(3)*V_L*I_L*cos(phi);
phi= acosd(P/(sqrt(3)*V_L*I_L));// in lag
// power factor
pf= cosd(phi);// lag
disp("The power factor is : "+string(pf)+" lag.");
