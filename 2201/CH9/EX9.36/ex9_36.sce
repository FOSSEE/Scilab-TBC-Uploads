// Exa 9.36
clc;
clear;
close;
// Given data
V_GSth= 2;// in V
k= 2*10^-4;// in A/V^2
V_DD= 12;// in V
R_D= 5*10^3;// in ohm
I_D= poly(0,'I_D');
V_DS= V_DD-I_D*R_D;// in V
I_D= I_D-k*(V_DS-V_GSth)^2;
I_D= roots(I_D);// in A
I_D= I_D(2);// in A
V_DS= V_DD-I_D*R_D;// in V
disp(I_D*10^3,"The value of I_D in mA is : ")
disp(V_DS,"The value of V_DS in volts is : ")


