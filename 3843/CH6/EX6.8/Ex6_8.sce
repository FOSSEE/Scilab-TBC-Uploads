// Example 6_8
clc;funcprot(0);
// Given data
m=2;// The mass of steam in kg
T=400;// °C
P=600;// kPa
T_0=25+273;// K

// Calculation
// From steam tables
s_1=7.7086;// kJ/kg.K
s_2=1.9316;// kJ/kg.K
dS_sys=m*(s_2-s_1);// kJ/K
h_1=3270.2;// kJ/kg
h_2=670.6;// kJ/kg
Q=m*(h_1-h_2);// The heat transfer in kJ
dS_surr=Q/T_0;// kJ/K
dS_univ=dS_surr+dS_sys;// kJ/K
printf("\nThe net entropy change of the process,dS_univ=%1.2f kJ/K",dS_univ);
