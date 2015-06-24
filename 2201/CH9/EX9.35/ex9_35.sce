// Exa 9.35
clc;
clear;
close;
// Given data
V_DD= 10;// in V
I_D= 0.4*10^3;// in A
W= 100;// in µm
L= 10;// in µm
uACox= 20;// in A/V^2
Vt= 2;// in V
R= poly(0,'R')
V_GS= V_DD-I_D*R;// in V
R= I_D-1/2*uACox*W/L*(V_GS-Vt)^2;
R= roots(R);// in Mohm
R= R(2);// in Mohm
disp(R*10^3,"The value of R in kΩ is : ")
V_D= V_DD-I_D*R;// in V
disp(V_D,"The value of V_D in volts is : ")
