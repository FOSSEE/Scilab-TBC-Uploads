// Example 9_10
clc;funcprot(0);
// Given data
P_1=100;// kPa
T_1=25+273;// K
T_2a=472.0;// K
r_p=5;// The pressure ratio
T_3=850+273;// The maximum temperature in K
T_4a=709.1;// K
k=1.4;// The specific heat ratio
c_p=1.00;// kJ/kg.K
n_comp=0.80;// The isentropic efficiency of the compressor 
n_turb=0.80;// The isentropic efficiency of the turbine

// Calculation
w_comp=(c_p/n_comp)*(T_2a-T_1);// kJ/kg
w_turb=n_turb*c_p*(T_3-T_4a);// kJ/kg
w_r=w_comp/w_turb;// The back work ratio
T_2=(w_comp/c_p)+T_1;// K
w_net=w_turb-w_comp;// kJ/kg
q_in=c_p*(T_3-T_2);// kJ/kg
n=w_net/q_in;// The thermal efficiency of the cycle
printf("\nThe back work ratio=%0.3f or %2.1f percentage. \nThe thermal efficiency of the cycle,n=%0.3f or %2.1f percentage.",w_r,w_r*100,n,n*100);
