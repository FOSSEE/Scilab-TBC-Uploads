// Exa 5.35
format('v',6)
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
// Evaluation the value of R by using polynomial method,
R= I_D-1/2*uACox*W/L*(V_GS-Vt)^2;
R= roots(R);// in Mohm
// For R(1), V_DS will be zero, so discarding it
R= R(2);// in Mohm
R=R*10^3;// in k ohm
disp(R,"The value of R in kΩ is : ")
R=R*10^-3;// in ohm
// The value of V_D,
V_D= V_DD-I_D*R;// in V
disp(V_D,"The value of V_D in volts is : ")
