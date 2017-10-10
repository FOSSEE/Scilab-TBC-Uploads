// Example 8_9
clc;funcprot(0);
// Given data
V_2=0.0400;// m^3
T_1=20.0;// °C
p_1=0.0100;// MPa
Q_12=0.100;// kJ
V_1=0.0100;// m^3
R=0.208;// kJ/kg.K
T_w=400;// K
c_p=0.523;// kJ/kg.K
c_v=0.315;// kJ/kg.K

// Calculation
m=((p_1*10^3)*V_1)/(R*(T_1+273.15));// kg
T_2=T_1+(Q_12/(m*c_v));// K
p_2=(m*R*(T_2+273.15))/V_2;// kPa
S_p12=(m*[(c_p*log((T_2+273.15)/(T_1+273.15)))-(R*log(p_2/(p_1*10^3)))])-(Q_12/T_w);// kJ/K
S_p12=S_p12*10^3;// J/K
printf('\nThe pressure and temperature inside the box after the balloon bursts p_2=%1.2f kPa and T_2=%3.0f°C \nThe entropy produced,1(S_P)2=%0.3f J/K',p_2,T_2,S_p12);
