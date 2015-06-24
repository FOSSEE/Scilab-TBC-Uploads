// Exa 6.16
format('v',5)
clc;
clear;
close;
// Given data
R_B= 10*10^3;// in Ω
R_C= 5*10^3;// in Ω
R_E= 10*10^3;// in Ω
Beta=50;
V_CC= 20;// in V
V_EE= 20;// in V
V_BE= 0.7;// in V
V_E= -V_BE;// in V
// The value of I_E1,
I_E1= (V_EE-V_BE)/(R_E+R_B/Beta);// in A
I_C1= I_E1;// in A
V_C= V_CC-I_C1*R_C;// in V
V_CE1= V_C-V_E;// in V
Beta= 100;
V_BE= 0.6;// in V
V_E= -V_BE;// in V
// The value of I_E2,
I_E2= (V_EE-V_BE)/(R_E+R_B/Beta);// in A
I_C2= I_E2;// in A
V_C= V_CC-I_C2*R_C;// in V
V_CE2= V_C-V_E;// in V
// The change in collector current
delta_IC= (I_C2-I_C1)/I_C1*100;// in %
// The change in collector to emitter voltage
delta_V_CE= (V_CE1-V_CE2)/V_CE1*100;// in %
disp(delta_IC,"The change in collector current in % is : ")
disp(delta_V_CE,"The change in collector to emitter voltage in % is : ")
