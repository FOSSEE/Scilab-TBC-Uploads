// Example 9_1
clc;funcprot(0);
// Given data
m=20;// The mass flow rate of air in kg/min
P_2=1600;// kPa
T_1=20+273;// K
P_1=100;// kPa
n=0.90;// The efficiency of the compressor
c_p=1.006;// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
// Assume T_2'=T_2a
T_2a=T_1*(P_2/P_1)^((k-1)/k);// K
T_2=T_1+((1/n)*(T_2a-T_1));// K
W_comp=(m/60)*c_p*(T_2-T_1);// The required power in kW
printf("\nThe power required to drive the adiabatic compressor,W_comp=%3.1f kW",W_comp);
