// Example 6_9
clc;funcprot(0);
// Given data
m_1=4;// kg/s
m_2=0.5;// kg/s
T_1=45;// °C
T_2=250;// °C
P=600;// kPa

// Calculation
m_3=m_2+m_1;// kg/s
// From steam tables
h_2=2957.2;// kJ/kg
h_1=188.4;// kJ/kg
h_3=((m_2*h_2)+(m_1*h_1))/m_3;// kJ/kg
// The exiting water temperature is interpolated from the saturated steam tables
h_f=496;// kJ/kg
T_3=(((496-461.3)/(503.7-461.3))*(110-100))+110;//  The exiting water temperature in °C
s_3=1.508;// kJ/kg.K
s_2=7.182;// The entropy of the entering superheated steam in kJ/kg.K
s_1=0.639;// The entering entropy of the subcooled water in kJ/kg.K
S_prod=(m_3*s_3)-(m_2*s_2)-(m_1*s_1);// kW/K
printf("\nThe rate of entropy production,S_prod=%0.3f kW/K",S_prod);
