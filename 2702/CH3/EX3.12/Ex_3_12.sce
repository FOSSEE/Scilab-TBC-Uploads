// Exa 3.12
clc;
clear;
close;
// Given data 
V_B= 5;// in V
V_BE= 0.7;// in V
V_CC= 10;// in V
bita=100;
R_B= 100;// in kΩ
R_C= 2;// in kΩ
R_B=R_B*10^3;// in Ω
R_C=R_C*10^3;// in Ω
I_B= (V_B-V_BE)/R_B;// in A
I_C= bita*I_B;//in A
V_C= V_CC-I_C*R_C;// in V
I_E= I_C;// in A (approx)
disp(I_B*10^3,"The value of I_B in mA is : ")
disp(I_C*10^3,"The value of I_C in mA is : ")
disp(V_C,"The value of V_C in volts is : ")
disp(I_E*10^3,"The value of I_E in mAis : ")
