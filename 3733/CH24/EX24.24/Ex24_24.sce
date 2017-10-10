// Example 24_24
clc;funcprot(0);
//Given data 
T_1=300;// K
p_1=1;// bar
T_4=870+273;// K
p_r=6;// Pressure ratio
e=0.65;// The effectiveness of heat exchanger
n_c=0.8;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of turbine
n_g=0.95// Generator efficiency
m_a=5;// kg/sec
C_p=1;// kJ/kg.K
r=1.4;// Specific heat ratio

//Calculation 
//(a)
T_2a=T_1*(p_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_5a=T_4/(p_r)^((r-1)/r);// K
T_5=T_4-(n_t*(T_4-T_5a));// K
W_n=m_a*C_p*((T_4-T_5)-(T_2-T_1))*n_g;// kW
//(b)
T_3=T_2+(e*(T_5-T_2));// K
n_th=((C_p*((T_4-T_5)-(T_2-T_1)))/(C_p*(T_4-T_3)))*100;// Thermal efficiency of the plant in %
T_6=T_5-(T_3-T_2);// K
//(c)
Q=(m_a*60)*C_p*(T_6-T_1);// KJ/min
printf('\n(a)Power output of the plant=%0.2f kW \n(b)Thermal efficiency of the plant=%0.1f percentage \n(c)Heat carried by the exhaust gases=%0.0f kJ/min',W_n,n_th,Q);
// The answer vary due to round off error
