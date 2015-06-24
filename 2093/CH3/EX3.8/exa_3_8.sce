// Exa 3.8
clc;
clear;
close;
// Given data 
V_BE= 0.7;// in V
V_CE= 3;// in V
I_C= 1;// in mA
I_C=I_C*10^-3;// in A
bita= 100;
I_B= I_C/bita;// in A
// V_CE= V_BE+V_CB and V_CB= I_B*R_B
R_B= (V_CE-V_BE)/I_B;// in Ω
disp(R_B*10^-3,"The value of R_B in kΩ is : ")
