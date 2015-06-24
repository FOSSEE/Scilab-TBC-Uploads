// Exa 1.6
clc;
clear;
close;
// Given data
V_o = 0.7;// in V
disp(V_o,"The value of V_o in V is");
E = 10;// in V
V_D = V_o;// in V
R = 330;// in ohm
I1 = (E - V_D)/R;// in A
I1 = I1*10^3;// in mA
disp(I1,"The value of I1 in mA is");
I_D1 = I1/2;// in mA
disp(I_D1,"The value of I_D1 in mA is");
I_D2 = I_D1;// in mA
disp(I_D2,"The value of I_D2 in mA is"); 
