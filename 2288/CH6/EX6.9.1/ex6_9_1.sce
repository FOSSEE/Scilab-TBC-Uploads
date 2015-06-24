//Exa 6.9.1
clc;
clear;
close;
// Given data
q = 1.6 * 10^-19;// in C
N_D = 10^15;// in electrons/cm^3
N_D = N_D * 10^6;// in electrons/m^3
epsilon_r = 12;
epsilon_o = (36 * %pi * 10^9)^-1;
epsilon = epsilon_o * epsilon_r;
a = 3 * 10^-4;// in cm
a = a * 10^-2;// in m
V_P = (q * N_D * a^2)/( 2 * epsilon);// in V
disp(V_P,"The Pinch off voltage in V is");
// V_GS = V_P * (1-(b/a))^2
b = (1-0.707) *a;// in m
disp(b*10^6,"The value of b in µm is : ")
disp("Hence the channel width has been reduced to about one third of its value for V_GS = 0");//
// Note : The unit of b in the book is wrong since the value of b is calculated in µm.
