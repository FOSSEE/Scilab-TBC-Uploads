// Exa 2.12
clc;
clear; 
close;
// Given data 
I_D= 0.5;// in mA
I_D= I_D*10^-3;// in mA
V_D= 3;// in V
Vt= -1;// in V
KpWbyL= 1;// in mA/V^2
KpWbyL=KpWbyL*10^-3;// in A/V^2
// Formul I_D= 1/2*KpWbyL*(V_OV)^2
V_OV= sqrt(2*I_D/KpWbyL);// in V
// For PMOS
V_OV= -V_OV;// in V
V_GS= V_OV+Vt;// in V
R_D= V_D/I_D;// in Ω
V_Dmax= V_D+abs(Vt);// in V
R_D= V_Dmax/I_D;// in Ω 
disp(R_D*10^-3,"The largest value that R_D can have while maintaining saturation-region operation in kΩ is : ")
