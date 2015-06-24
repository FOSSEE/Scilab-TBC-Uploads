// Exa 6.17
clc;
clear;
close;
// Given data
I_D = 0.8;// in mA
I_D= I_D*10^-3;// in A
I_DSS = 1.645;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P = -2;// in V
V_GS = V_P * (1-sqrt(I_D/I_DSS));// in V
disp(V_GS,"The gate source voltage in V is");
g_mo = -((2*I_DSS)/V_P);// in A/V
g_m = g_mo*(1-(V_GS/V_P));// in A/V
disp(g_m*10^3,"The transconductance in mA/V is");
R_S = -(V_GS/I_D);// in ohm
disp(R_S,"The source resistance in ohm is");
AdB= 20;// in dB
A= 10^(AdB/20);
R_D= A/g_m;// in ohm
disp(R_D*10^-3,"The value of R_D in kΩ is : ")

// Note: There is calculation error to find the value of R_S in the book . So the answer in the book is wrong
