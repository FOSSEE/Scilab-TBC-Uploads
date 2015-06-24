// Exa 2.22
clc;
clear;
close;
format('v',6)
// Given data
R1 = 20;// in ohm
R2 = 5;// in ohm
R3 = 3;// in ohm
R4 = 2;// in ohm
V = 30;// in V
I1=4;// in A
V1= I1*R3;// in V
// R1*I -R2*I+V = 0;
I = V/(R1+R2);// in A
V_acrossR2= R2*I;// in V
V_AB = V_acrossR2-V1;// in V
Vth = abs(V_AB);// in V
Rth = (R1*R2)/(R1+R2)+R3+R4;// in ohm
disp(Rth,"The value of Rth in ohm is");
I_N = Vth/Rth;// in A
disp(I_N,"The value of I_N in A is");
