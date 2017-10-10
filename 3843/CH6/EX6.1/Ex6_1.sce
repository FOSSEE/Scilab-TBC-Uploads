// Example 6_1
clc;funcprot(0);
// Given data
T_1=20;// °C
p_1=200;// kPa
W=720;// kJ
V_1=2;// m^3
R=0.287;// kJ/kg.K
c_v=0.717;// kJ/kg.K

// Calculation
m=(p_1*V_1)/(R*(T_1+273));// The mass in kg
T_2=(W/(m*c_v))+(T_1+273);// K
delS=m*c_v*log(T_2/(T_1+273));// kJ/K
printf("\nThe increase in entropy,delS=%1.3f kJ/K",delS);
