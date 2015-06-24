// Exa 3.11
clc;
clear;
close;
// Given data 
V_B= 4;// in V
V_BE= 0.7;// in V
V_CC= 10;// in V
V_E= V_B-V_BE;// in V
R_E= 3.3;// in kΩ
R_E=R_E*10^3;// in Ω
RC= 4.7;// in kΩ
RC=RC*10^3;// in Ω
I_E= V_E/R_E;// in A
bita=100;
alpha= bita/(1+bita);
I_C= alpha*I_E;//in A
disp(I_C*10^3,"The value of I_C in mA is : ")
V_C= V_CC-I_C*RC;// in V
disp(V_C,"The value of V_C in volts is : ")
I_B= I_E/(1+bita);// in A
disp(I_B*10^3,"The value of I_B in mA is : ")
