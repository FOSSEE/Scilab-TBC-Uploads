// Exa 6.25
clc;
clear;
close;
// Given data
ro=10;// in kΩ
ro= ro*10^3;// in Ω
r=90;// in kΩ
r= r*10^3;// in Ω
V_P= 5;// in V
// r= ro/(1-V_GS/V_P)^2;// in Ω
V_GS= V_P*(1-sqrt(ro/r));// in V
disp(V_GS,"The value of V_GS in volts is :")

