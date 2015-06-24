// Example 10.5
format('v',6)
clc;
clear;
close;
// given data
V_E= 1.43;// in V
R_E= 100;// in Ω
R_L= 100;// in Ω
R_C= 1*10^3;// in Ω
bita= 200;
Vt= 25*10^-3;// in V
I_E= V_E/R_E;// in A
I_CQ= I_E;// in A
Zin= bita*R_L;// in Ω
r_desh_e= Vt/I_CQ;// in Ω
// The voltage gain of the driver stage 
A= (R_C*Zin/(R_C+Zin))/(R_E+r_desh_e);
disp(A,"The voltage gain of the driver stage is : ")
// On ignoring Zin and r_desh_e,
A= R_C/R_E;
disp(A,"On ignoring the value of Zin and r''e, the voltage gain is : ")
