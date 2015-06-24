// Exa 1.11
clc;
clear;
close;
// Given data
R= 5.6*10^3;// in Ω
I_D = 0;// in A
V_D = 0;// in V
E= 12;// in V
Vo= I_D*R;// in V
disp(I_D,"The value of I_D in A is :");
disp(Vo,"The value of Vo in V is");
V_D1 = 0;// in V
V_D2 = E -V_D1 - Vo;// in  V
disp(V_D2,"The value of V_D2 in V is");
