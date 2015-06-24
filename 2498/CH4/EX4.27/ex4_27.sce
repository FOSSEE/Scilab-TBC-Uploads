// Exa 4.27
format('v',6)
clc;
clear;
close;
// Given data
V_CC = 30;// in V
R1 = 90;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 45;// in k ohm
R2 = R2 * 10^3;// in  ohm
R_C = 5;// in  k ohm
R_C = R_C * 10^3;// in ohm
R_E = 5;// in k ohm
R_E =R_E * 10^3;// in ohm
V_BE = 0.6;// in V
h_FE = 100;
Beta = h_FE;
I_CBO = 10;// in µA
I_CBO = I_CBO * 10^-6;// in A
V_BB = V_CC*(R2/(R1+R2));// in V
Vth = V_BB;// in V
R_BB = (R1*R2)/(R1+R2);// in ohm
Rth= R_BB;// in ohm
I_C = (V_CC-V_BE)/( (Rth/Beta)+R_E );// in A
I_CEO = (Beta+1)*I_CBO;// in A
// The value of I_C 
I_C = I_C-I_CEO;// in A
I_C= I_C*10^3;// in mA
disp(I_C,"The value of I_C in mA is");
// The value of Vo
Vo =V_CC-(I_C*10^-3*R_C);// in V
disp(Vo,"The value of Vo in V is");

// Note: In the book, the putted value of V_CC (i.e 20 V ) to evaluate the value of I_C is wrong, so the value of I_C in the book is wrong and due to this the value of Vo is also wrong.
