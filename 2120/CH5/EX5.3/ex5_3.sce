// Exa 5.3
clc;
clear;
close;
// Given data
g= 9.81;
p1 = 3;// in Mpa
p2 = 10;// in kPa
T1 = 350;// in °C
T1 = T1 + 273;// in K
m = 1;// in kg per sec
v1 = 50;// in m per sec
v2 = 120;// in m per sec
z1 = 2;// in m
z2 = 5;// in m
C_p = 1.005;// in kJ per sec
Q = 5;// in kJ per sec
Q = -(Q) * 10^3;// in J per sec
T2 = (p2 * T1)/p1;// in K
del_h = C_p * (T2-T1);// in kJ
del_h = del_h * 10^3;// in J
t = m * ( del_h +(v2^2-v1^2)/2 + (g * (z2 - z1)));// t is variable taken  for calculation
W_s = Q - t;// in J per sec
W_s = W_s * 10^-6;// in MW
disp(W_s,"The power output of the turbine in MW");
// If kinetic and potential energy are ignored then
W_s2 = Q -(m * del_h);// in J per sec
W_s2 = W_s2 * 10^-6;// in MW
errorIntroduced= (abs(W_s)-abs(W_s2))/abs(W_s)*100;// in %
disp(errorIntroduced,"Total error introduced in % is :");
