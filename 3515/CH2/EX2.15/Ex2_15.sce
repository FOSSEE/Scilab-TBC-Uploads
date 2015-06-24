// Exa 2.15
format('v',7);
clc;
clear; 
close;
// Given data 
I_D= 0.2;// in mA
I_D= I_D*10^-3;// in mA
Vt= 1;// in V
KpWbyL= 0.1;// in mA/V^2
KpWbyL=KpWbyL*10^-3;// in A/V^2
// Formul I_D= 1/2*KpWbyL*(V_GS-VT)^2
V_GS= sqrt(2*I_D/KpWbyL)+Vt;// in V
V_DSmin= V_GS-Vt;// in V
disp(V_GS,"Required V_GS in volts is : ")
disp(V_DSmin,"The minimum required V_DS in volts is : ")
// For I_D= 0.8 mA
I_D = 0.8*10^-3;// in A
V_GS= sqrt(2*I_D/KpWbyL)+Vt;// in V
V_DSmin= V_GS-Vt;// in V
disp(V_GS,"Required V_GS in volts is : ")
disp(V_DSmin,"The minimum required V_DS in volts is : ")
