// Example 3_5
clc;funcprot(0);
// Given data
m=100;// kg
d=3;// m
V=0.002;// m^3
P_gage=100;// The gage pressure in kPa
g=9.81;// m/s^2

// Calculation
F=m*g;// N
W=-(F)*(d);// J
P_abs=200;// The absolute pressure in kPa
W_p=P_abs*10^3*V;// The work done on the system in J
W_net=W+W_p;// The net work done in J
printf("\nThe net work done,W_net=%4.0f J",W_net);
