// Exa 8.5
clc;
clear;
close;
format('v',9)
// Given data
I_Don = 5;// in mA
V_GSon = 7;// in V
V_T = 4;// in V
V_DD = 9;// in V
R_D = 1.2;// in k ohm
R_S = 0.5;// in k ohm
K = (I_Don)/((V_GSon-V_T)^2);// in mA/V^2
// The value of drain current,
I_D = K*((V_GSon-V_T)^2);// in mA
disp(I_D,"The value of I_D in mA is");
//The drain to source voltage, V_DS = V_DD - (I_D*R_D) - (I_D*R_S);
V_DS = V_DD - (I_D*(R_D+R_S));// in V
disp(V_DS,"The value of V_DS in V");

// Note: The answer in the book is not accurate.
