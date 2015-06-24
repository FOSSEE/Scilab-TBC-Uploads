// Exa 5.36
format('v',5)
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
// Evaluation the value of I_D by using polynomial method,
I_D= I_D-k*(V_DS-V_GSth)^2;
I_D= roots(I_D);// in A
// For I_D(1), V_DS will be negative, so discarding it
I_D= I_D(2);// in A
// The value of V_DS,
V_DS= V_DD-I_D*R_D;// in V
I_D= I_D*10^3;// in mA
disp(I_D,"The value of I_D in mA is : ")
disp(V_DS,"The value of V_DS in volts is : ")


