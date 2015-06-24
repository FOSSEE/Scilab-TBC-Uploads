// Exa 1.18
clc;
clear;
close;
// Given data
V_gamma = 0.7;// in V
R1 = 5*10^3;// in ohm
R2 = 10*10^3;// in ohm
V=5;// in V
disp("Part (a)")
I_R2 = (V-V_gamma-(-V))/(R1+R2);// in A
I_D2 = I_R2;// in A
disp(I_D2*10^3,"The value of I_D1 and I_D2 in mA is");
V_o = V - (I_D2 * R1);// in V
disp(V_o,"The value of Vo in V is");
V_A = V_o - V_gamma;// in V
disp(V_A,"The value of V_A in V is");
disp("Part (b)")
V_I = 4;// in V
V_A= V_I-V_gamma;// in V
Vo= V_A+V_gamma;// in V
I_R1= (V-Vo)/R1;// in A
I_D2= I_R1;// in A
disp(I_D2*10^3,"The value of I_D2 in mA is : ")
I_R2= (V_A-(-V))/R2;// in A
I_D1= I_R2-I_R1;// in A
disp(I_D1*10^3,"The value of I_D1 in mA is : ")
disp(Vo,"The value of Vo in volts is : ")
