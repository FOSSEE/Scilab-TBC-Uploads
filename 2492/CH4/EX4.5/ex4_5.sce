// Exa 4.5
format('v',6)
clc;
clear;
close;
// Given data
Beta_dc = 80;
V_CC = 25;// in V
V_BE = 0.7;// in V
R_B = 180;// in k ohm
R_B = R_B * 10^3;// in ohm
R_E = 200;// in ohm
R_C = 820;// in ohm
I_B = (V_CC-V_BE)/(R_B+((Beta_dc+1)*R_E));// in A
I_C = Beta_dc*I_B;// in A
V_CG = V_CC - (I_C*R_C);// in V
disp(V_CG,"The voltage between collector and ground in volts is : ")
V_CEsat = 0.3;// in V
// V_CC - V_CEsat = I_Csat*R_C + I_Csat/Beta_dc*(Beta_dc+1)*R_E;
I_C = (V_CC-V_CEsat)/(R_C+R_E);// in A
//I_B = V_CC - ((I_E*R_E)+V_BE)/R_B = V_CC - ((I_C*R_E)+V_BE)/R_B;
I_B = (V_CC-I_C*R_E+V_BE)/R_B;// in A
Beta_dc = I_C/I_B;
disp(Beta_dc,"The value of Beta_dc on which transistor is saturate is");

// Note: There is some difference between the value of Beta_dc in the book and coding output because the correct values of I_C and I_B are  24.215 mA and 0.1158
