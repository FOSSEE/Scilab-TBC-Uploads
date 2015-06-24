// Exa 7.5
clc;
clear;
close;
format('v',4)
// Given data
Alpha = 3*10^-6;// in m
N_D = 10^21;// in electrons/cm^3
q = 1.6 * 10^-19;// in C
Epsilon_o = (36*%pi*10^9)^-1;
Epsilon = 12*Epsilon_o;
// The pinch of voltage 
V_P = ((q*N_D)/(2*Epsilon))*(Alpha^2);// in V
disp(V_P,"The pinch of voltage in V is");
// Part (ii)
format('e',9)
VGSbyVp= 1/2;
// V_GS = ((1-b/Alpha)^2)*V_P
// The channel half width 
b = Alpha*( 1-sqrt(VGSbyVp));// in m
b=b*10^2;// in cm
disp(b,"The channel half width in cm is");
