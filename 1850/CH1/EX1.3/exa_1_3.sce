// Exa 1.3
clc;
clear;
close;
// Given data
format('v',9)
V_CC= 12;// in volt
V_EE= 12;// in volt
V_BE= 0.7;// in volt
R_C= 10;// in k ohm
R_C= R_C*10^3;// in ohm
R_E= 10;// in k ohm
R_E= R_E*10^3;// in ohm
R_B= 20;// in k ohm
R_B= R_B*10^3;// in ohm
Bita_dc= 75;
// Part (i)
//Ignoring V_BE
I_T= V_EE/R_E//in amp   
I_E= I_T/2;// in amp
I_C=I_E;
V_out= V_CC-I_C*R_C// in volt
disp(V_out,"Output Voltage in volt (Ignoring V_BE)");
//Considering V_BE
I_T= (V_EE-V_BE)/R_E//in amp   
I_E= I_T/2;// in amp
I_C=I_E;
V_out= V_CC-I_C*R_C// in volt
disp(V_out,"Output Voltage in volt (Condidering V_BE)");
I_T= (V_EE-V_BE)/(R_E+R_B/(2*Bita_dc));// in amp
I_E= I_T/2;// in amp
I_C=I_E;
V_out= V_CC-I_C*R_C// in volt
disp(V_out,"Output Voltage in volt (With Bita_dc)");

// Part(ii)
I_C= 0.6;// in mA
I_C=I_C*10^-3;
I_B= I_C/Bita_dc;// in amp
disp(I_B*10^6,"Base current in micro amphere");
V_B= -I_B*R_B;// in volt
disp(V_B,"Base Voltage in volt")

// Part (iii)
Bita_dc= 60;
I_B1= I_C/Bita_dc;// in amp
disp(I_B1*10^6,"Base current for transistor Q1 in micro amphere");
V_B1= -I_B1*R_B;// in volt
disp(V_B1,"Base Voltage for transistor Q1 in volt")
Bita_dc= 80;
I_B2= I_C/Bita_dc;// in amp
disp(I_B2*10^6,"Base current for transistor Q2 in micro amphere");
V_B2= -I_B2*R_B;// in volt
disp(V_B2,"Base Voltage for transistor Q2 in volt")























