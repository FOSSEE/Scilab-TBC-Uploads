// Example 9_2
clc;funcprot(0);
// Given data
m=20;// The mass flow rate of air in kg/min
P_4=1600;// kPa
T_1=20+273;// K
P_1=100;// kPa
n=0.90;// The efficiency of the compressor
c_p=1.00;// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
P_2=sqrt(P_1*P_4);// kPa
T_3=T_1;// K
T_2a=T_1*(P_2/P_1)^((k-1)/k);// K
// Assume T_2'=T_2a
// P_4/P_3=P_2/P_1
T_4a=T_3*(P_2/P_1)^((k-1)/k);// K
T_2=T_1+((1/n)*(T_2a-T_1));// K
T_4=T_2;// K
W_comp=((m/60)*c_p*(T_2-T_1))+((m/60)*c_p*(T_4-T_3));// The required power in kW
printf("\nThe power required to drive the two-stage adiabatic compressor,W_comp=%3.0f kW",W_comp);
