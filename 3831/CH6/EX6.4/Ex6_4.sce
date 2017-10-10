// Example 6_4
clc;funcprot(0);
// Given data
Q=0;// kW
W=0;// kW
m_s=12.0;// kg/min
p_1=1.00;// MPa
T_1=500;// °C
T_3=15;// °C
T_4=20;// °C

// Calculation
h_1=3478.4;// kJ/kg
h_2=762.8;// kJ/kg
c_w=4.2;// kJ/kg.K
m_w=m_s*(h_1-h_2)/[c_w*(T_4-T_3)];// kg/min
printf("\nThe flow rate of cooling water taken from a local river,m_w=%4.0f kg/min",m_w);
