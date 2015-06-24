// Example 4.5
clc;
clear;
close;
// Given data
V_BB= 10;// in V
V_CC= 10;// in V
V_BE= 0.7;// in V
R_B= 1;// in MΩ
R_B= R_B*10^6;// in Ω
R_C= 2;// in kΩ
R_C= R_C*10^3;// in Ω
bita= 300;
I_B= (V_BB-V_BE)/R_B;// in A
I_C= bita*I_B;// in A
V_CE= V_CC-I_C*R_C;// in V
P_D= V_CE*I_C;// in W
disp(I_B*10^6,"The value of I_B in µA is : ")
disp(I_C*10^3,"The value of I_C in mA is : ")
disp(V_CE,"The value of V_CE in volts is : ")
disp(P_D*10^3,"The value of P_D in mW is :")
