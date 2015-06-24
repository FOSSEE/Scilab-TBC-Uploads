// Exa 8.12
clc;
clear;
close;
// Given data
q = 1.6*10^-19;// in C
N_D = 10^15*10^6;//electrons/m^3
a = 3*10^-4;// in cm
a=a*10^-2;// in m
Epsilon_o  = (36 * %pi * 10^9)^-1;
Epsilon = 12*Epsilon_o;
V_P = (q*N_D*((a)^2))/(2*Epsilon);// in V
disp(V_P,"Pinch off voltage in V is");
V_GS = 1;// in V
V_P = 2;// in V
// Formula V_GS= V_P*(1-b/a)^2
b = a*( 1-sqrt(V_GS/V_P) );// in m
b = b * 10^6;// in µm
disp(b,"The channel half width in µm is");

// Note: In the book, the unit of channel half width is wrong.
