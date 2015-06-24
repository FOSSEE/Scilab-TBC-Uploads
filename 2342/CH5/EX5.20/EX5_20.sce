// Exa 5.20
format('v',6)
clc;
clear;
close;
// Given data
V_P= -8;// in V
R_S= 2.4;// in kΩ
//R_D= 1800;// in Ω
I_DSS= 8;// in mA
V_DD= 20;// in V
R_D= 6.2;// in kΩ
// V_GS= -I_D*R_S
// I_D= I_DSS*(1-V_GS/V_P)^2 or I_DSS*(1-(-I_D*R_S)/V_P)^2
//I_D^2*R_S^2+I_D*(2*R_S*(V_P-V_G)-V_P^2/I_DSS)+(V_P)^2
A= R_S^2
B=(2*R_S*(V_P)-V_P^2/I_DSS)
C=(V_P)^2
I_D= [A B C]
// Evaluation fo I_D using by polynomial method
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
I_DQ= I_D;// in mA
disp(I_DQ,"The value of I_DQ in mA is : ")
// The value of V_GSQ
V_GSQ= -I_D*R_S;// in V
disp(V_GSQ,"The value of V_GSQ in volts ")
// The value of V_D,
V_D= V_DD-I_D*R_D;// in V
disp(V_D,"The value of V_D in volts is : ")
