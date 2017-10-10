// Example 14_1
clc;funcprot(0);
//Given data
P=35;// bar
T_1=400;//Temperature of steam in °C
m_s=200;// Flow rate of steam in Tonnes/hr
T_2=450;//°C
T_sp=60;// The temperature of spray water in °C
C_pw=4.2;// kJ/kg.°C
//Calculation
//From steam tables,
//At 35 bar and 450°C
h_1=3337;// kJ/kg
//At 35 bar and 400°C
h_2=3222;// kJ/kg
h_w=C_pw*(T_sp-0);// kJ/kg
m_w=m_s*((h_1-h_2)/(h_2-h_w));//The mass of water supplied to the super heater in tons/hr
m_w=(m_w*1000)/3600;// kg/hr
printf('\nThe mass of water supplied to the super heater=%0.2f kg/sec',m_w);
