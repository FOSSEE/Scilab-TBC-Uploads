// Exa 5.18
format('v',6)
clc;
clear;
close;
// Given data
k4 = 0.125;// in mA/V^2
k3 = k4;// in mA/V^2
k2 = k4;// in mA/V^2
k1 = 0.25;// in mA/V^2
V_T1 = 0.8;// in V
V_T2 = V_T1;// in V
V_T3 = V_T1;// in V
V_T4 = V_T1;// in V
V_SS = -5;// in V
V_DD = 5;// in V
R_D = 10;// in k ohm
// Required formula, V_GS3 = ((sqrt(k4/k3) * (-V_SS - V_T4))+V_T3)/(1+sqrt(k4/k3))
V_GS3 = ((sqrt(k4/k3) * (-V_SS - V_T4))+V_T3)/(1+sqrt(k4/k3));// in V
// Calculation to evaluate the value of I_Q,
I_Q = k2*((V_GS3-V_T2)^2);// in mA
I_D1 = I_Q;// in mA
// The value of V_GS1,
V_GS1 = V_T1 + (sqrt(I_D1/k1));// in V
disp(V_GS1,"The value of V_GS1 in V is");
// The value of V_DS2,
V_DS2 = (-V_SS-V_GS1);// in V
disp(V_DS2,"The value of V_DS2 in V is");
// The value of V_DS1,
V_DS1 = V_DD - (I_Q*R_D) - (V_SS + V_DS2);// in V
disp(V_DS1,"The value of V_DS1 in V is");

