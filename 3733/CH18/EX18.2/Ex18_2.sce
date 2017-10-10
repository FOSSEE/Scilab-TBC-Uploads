// Example 18_2
clc;funcprot(0);
//Given data 
m_w1=400;// Quantity of cooling water in kg/min
T_1=43.5;// The temperature of water at inlet in °C
T_a1=18.5;// °C
RH=60;// Relative humidity in %
T_a2=27;// °C
V=600;// Volume of air per minute in m^3/min
P=4;// Power absorbed in kW
C_pw=4.2;// kJ/kg°C

//Calculation
//The conditions of air at inlet and outlet are represented on psychrometric chart as shown in Fig.Prob.18.2
// Total heat of air at inlet + Total heat of water at inlet + heat dissipatedby motor = Total heat of air at outlet + Total heat of water at outlet
// From psychrometric chart,
H_a1=38.87;// kJ/kg
H_a2=84.85;// kJ/kg
w_1=7.8;// grams/kg
w_2=22.6;// grams/kg
v_s1=0.836;// m^3/kg
m_a=V/v_s1;// kg/min
Q=P*60;// kJ/min
//T_2=y(1)
function[X]=Temperature(y);
    X(1)=((m_w1*C_pw*(T_1-y(1)))+Q)-(m_a*((H_a2-H_a1)-(((w_2-w_1)/1000)*C_pw*y(1))));
endfunction
y=[10]
z=fsolve(y,Temperature);
T_2=z(1);// The temperature of water coming out of the tower in °C
m_m=m_a*((w_2-w_1)/1000);// The make up water required per hour in kg/min
printf('\nThe temperature of water coming out of the tower=%0.2f°C \nThe make up water required per hour=%0.1f kg/min',T_2,m_m);
// The answers provided in the textbook is wrong


