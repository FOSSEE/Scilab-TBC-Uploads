// Example 9_12
clc;funcprot(0);
// Given data
// From example 9.9
P_1=100;// kPa
P_4=500;// kPa
T_1=25+273;// K
T_6=850+273;// The maximum temperature in K
c_p=1.00// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
P_2=sqrt(P_1*P_4);// The intermediate pressure in kPa
T_2=T_1*(P_2/P_1)^((k-1)/k);// K
T_8=T_6;// K
P_7=P_2;// kPa
P_6=P_4;// kPa
T_7=T_6*(P_7/P_6)^((k-1)/k);// K
T_9=T_7;// K
T_5=T_7;// K
T_4=T_2;// K
T_3=T_1;// K
w_turb=(c_p*(T_6-T_7))+(c_p*(T_8-T_9));// kJ/kg
w_comp=(c_p*(T_2-T_1))+(c_p*(T_4-T_3));// kJ/kg
w_out=w_turb-w_comp;// kJ/kg
q_C=c_p*(T_6-T_5);// kJ/kg
q_R=c_p*(T_8-T_7);// kJ/kg
q_in=q_C+q_R;// kJ/kg
n=w_out/q_in;// The thermal efficiency of the cycle
printf("\nThe thermal efficiency of the cycle,n=%0.3f or %2.1f percentage",n,n*100);
