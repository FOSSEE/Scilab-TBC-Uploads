//Example 12_1
clc;clear;funcprot(0);
// Given values
T_1=255.7;// The ambient air temperature in K
P_1=54.05;//The atmospheric pressure in kPa
V_1=250;// m/s
h=5000;// m
P_r=8;// Pressure ratio of the compressor
// Properties
C_p=1.005;//The constant-pressure specific heat C_p in kJ/kg.k
k=1.4;// The specific heat ratio

//Calculation
//(a)
T_01=T_1+(V_1^2/(2*C_p*1000));//The stagnation temperature at the compressor inlet in K
P_01=P_1*(T_01/T_1)^(k/(k-1));//kPa
printf('The stagnation pressure at the compressor inlet,P_01=%0.2f kPa\n',P_01);
//(b)
// P_r=(P_02/P_01)
T_02=T_01*(P_r)^((k-1)/k);//The stagnation temperature of air at the compressor exit in K
W_in=C_p*(T_02-T_01);//the compressor work per unit mass of air in kJ/kg
printf('The compressor work per unit mass of air,W_in=%0.1f kJ/kg\n',W_in);
