// Example 6_6
clc;funcprot(0);
// Given data
P_1=20;// kPa
P_2=1000;// kPa
P_3=P_2;// kPa
P_4=P_1;// kPa
x_4=0.88;// The quality of steam
m=1;// kg

// Calculation
// From steam tables
T_B=179.9;// °C
T_C=60.1;// °C
x_1=0.18;// The quality of steam at inlet
h_2=763;// kJ/kg
h_3=2778;// kJ/kg
Q_B=m*(h_3-h_2);// kJ
h_f4=251;// kJ/kg
h_fg4=2358;// kJ/kg
h_4=h_f4+(x_4*h_fg4);// kJ/kg
h_f1=251;// kJ/kg
h_fg1=2358;// kJ/kg
h_1=h_f1+(x_1*h_fg1);// kJ/kg
Q_C=m*(h_4-h_1);// kJ
dQbyT=(Q_B/(T_B+273))-(Q_C/(T_C+273));// kJ/K
printf("\ndQ/T=%0.3f kJ/K.This is negative,as it must be if the proposed power plant is to satisfy the inequality of Clausius.",dQbyT);
