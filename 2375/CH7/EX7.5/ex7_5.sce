// Exa 7.5
clc;
clear;
close;
format('e',8)
// Given data
I_Don = 6;// in mA
I_Don = I_Don * 10^-3;// in A
V_GSon = 8;// in V
Vt = 3;// in V
V_DD = 12;// in V
R_D= 2*10^3;// in ohm
// (i) To obtain the value of K
K = I_Don/( (V_GSon-Vt)^2 );// in A/V^2
disp(K,"The value of K in A/V^2 is");
format('v',7)
// To obtain the value of I_DQ
I_D= poly(0,'I_D');
V_GS= V_DD-I_D*R_D;// in V
I_D= I_D-K*(V_GS-Vt)^2;// in A
I_D= roots(I_D);// inA
I_D= I_D(2);// in A
I_D= I_D*10^3;// in mA
disp(I_D,"The value of I_D in mA is : ")
I_D= I_D*10^-3;// in A
// (iii) To obtain the value of V_DSQ
V_DSQ= V_DD-I_D*R_D;// in V
disp(V_DSQ,"The value of V_DSQ in volts is : ")
