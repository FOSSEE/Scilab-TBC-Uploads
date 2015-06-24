//Exa 6.17
clc;
clear;
close;
// Given data
T1 = 12;// in °C
T2 = 92;// in °C
T1 = T1 + 273;// in K
T2 = T2 + 273;// in K
del_T = T2 - T1;// in K
m = 20;// in kg
C_v = 4.187;
s= 1;
Q = m * s * del_T;// in cal
Q = Q * 4.18;// in J
H = 2;// heat given by the heater in kw
H = H * 10^3;// in J/sec
t = Q/H;//time taken by the heater to raise the temp. in sec
disp(t,"Time taken by the heater to raise the temperature in sec is");
del_phi = m * C_v * log(T2/T1);// in kJ/K
disp(del_phi,"Entrophy generated during the process in kJ/K");
