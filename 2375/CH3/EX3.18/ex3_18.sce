// Exa 3.18             (Miss printed as example 3.15)
clc;
clear;
close;
format('v',5)
// Given data
P_Cmax = 125;// in mW
P_D = P_Cmax;// in mW
T_A = 25;// in degree C
Tj = 150;// in degree C
// Tj-T_A = theta*P_D;
theta = (Tj-T_A)/P_D;// in degree C/mW
disp(theta,"The thermal resistance for a transistor in °C/mW is");
// For theta= 1 °C/mW
P_D = 75;// in mW
// Tj-T_A = theta*P_D;
Tj = (theta*P_D) + T_A;// in degree C
disp(Tj,"The junction temperature in °C is");
