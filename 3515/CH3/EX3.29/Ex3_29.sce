// Exa 3.29
format('v',7);
clc;
clear;
close;
// Given data 
V_CC=5;// in V
V_E= 1;// in V
V_BE= 0.7;// in V
R_E=5*10^3;//in Ω
R_C=5*10^3;//in Ω
R_B= 20*10^3;// in Ω
I_E= (V_CC-V_E)/R_E;//  in A
// For pnp transistor V_BE= V_E-V_B
V_B= V_E-V_BE;// in V
I_B= V_B/R_B;// in A
I_C= I_E-I_B;// in A
V_C= I_C*R_C-V_CC;// in V
bita= I_C/I_B;
alpha= I_C/I_E;
disp(V_B,"The value of V_B in volts is : ");
disp(I_B*10^3,"The value of I_B in mA is : ");
disp(I_E*10^3,"The value of I_E in mA is : ");
disp(I_C*10^3,"The value of I_C in mA is : ");
disp(V_C,"The value of V_C in volts is : ");
disp(bita,"The value of bita is : ");
disp(alpha,"The value of alpha is : ");
