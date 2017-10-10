// Example 6_3
clc;funcprot(0);
// Given data
T_1=20;// °C
P_1=200;// kPa
W=720;// kJ
V_1=2;// m^3
R=0.287;// kJ/kg.K
c_v=0.717;// kJ/kg.K

// Calculation
m=(P_1*V_1)/(R*(T_1+273));// The mass in kg
u_1=209.1;// kJ/kg
u_2=-(W/m)+u_1;// kJ/kg
T_2=501.2;// K
phi_2=2.222;// The relative humidity at state 2
phi_1=1.678;// The relative humidity at state 1
P_2=P_1*(T_2/(T_1+273));// kPa
delS=m*(phi_2-phi_1-(R*log(P_2/P_1)));// kJ/K
printf("\nThe entropy change,delS=%1.3f kJ/K",delS);
