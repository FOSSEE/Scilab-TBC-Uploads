// Example 18_3
clc;funcprot(0);
//Given data 
T_1=45;//The temperature of water at inlet in °C
m_w1=360;// kg/min
V=10;// The air circulated in the tower in m^3/sec
Q=4900;// The amount of heat absorbed by the air in watts
DBT=20;// Dry bulb temperature in °C
RH=60;// Relative humidity in %
T_a2=26;// The temperature of air leaves the tower at saturated condition in °C
C_pw=4.2;// kJ/kg°C

//Calculation
// The condtions of air entering and leaving the tower are represented onn psychrometric chart as shown in Fig.Prob.18.3
// From psychrometric chart,
H_a1=45;// kJ/kg
H_a2=81;// kJ/kg
w_1=9.6;// grams/kg
w_2=21.6;// grams/kg
v_s1=0.848;// m^3/kg
m_a=V/v_s1;// kg/sec
Q=Q/1000;// kW=kJ/sec
//T_2=y(1)
function[X]=Temperature(y);
    X(1)=(((m_w1*C_pw*(T_1-y(1)))/60)+Q)-(m_a*((H_a2-H_a1)-(((w_2-w_1)/1000)*C_pw*y(1))));
endfunction
y=[10]
z=fsolve(y,Temperature);
T_2=z(1);// The temperature of water coming out of the tower in °C
m_m=m_a*((w_2-w_1)/1000);// The make up water required per hour in kg/min
printf('\nThe temperature of water coming out of the tower=%0.0f°C \nThe make up water required per hour=%0.3f kg/min',T_2,m_m);
