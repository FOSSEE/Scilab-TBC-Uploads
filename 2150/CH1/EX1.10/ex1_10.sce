// Exa 1.10
clc;
clear;
close;
// Given data
I_D = 10;// in mA
I_D = I_D * 10^-3;// in A
V_D = 0.5;// in V
r_F1 = V_D/I_D;// in ohm
disp(r_F1,"The value of r_F1 in ohm is");
I_D = 20;// in mA
I_D = I_D * 10^-3;// in A
V_D = 0.8;// in V
r_F2 = V_D/I_D;// in ohm
disp(r_F2,"The value of r_F2 in ohm is");
I_D = -1;// in µA
I_D = I_D * 10^-6;// in A
V_D = -10;// in V 
r_R = V_D/I_D;// in ohm
disp(r_R*10^-6,"The value of r_R in Mohm is");

// Note: There is calculation error to evaluate the value of r_F1. So the asnwer in the book is wrong.
