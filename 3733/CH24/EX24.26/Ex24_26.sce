// Example 24_26
clc;funcprot(0);
//Given data 
T_1=303;// K
p_1=0.9;// bar
p_2=4.5;// bar
T_3=1000+273;// K
p_3=1.1;// bar
e=0.8;// Effectiveness of heat exchanger 
n_c=0.85;// Isentropic efficiency of compressor
n_t=0.80;// Isentropic efficiency of turbine
m_a=5;// kg/sec
C_p=1.005;// kJ/kg.K
r=1.4;// Specific heat ratio

//Calculation
T_2a=T_1*(p_2/p_1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_4a=T_3/(p_2/p_3)^((r-1)/r);// K
T_4=T_3-(n_t*(T_3-T_4a));// K
T_5=T_2+(e*(T_4-T_2));// K
n_th=(((T_3-T_4)-(T_2-T_1))/(T_3-T_5))*100;// The thermal efficiency of the system in %
P=m_a*C_p*((T_3-T_4)-(T_2-T_1));// The power developed by the system in kW
printf('\nThe thermal efficiency of the system=%0.0f percentage \nThe power developing capacity of the system=%0.1f kW',n_th,P);
// The answer provided in the textbook is wrong
