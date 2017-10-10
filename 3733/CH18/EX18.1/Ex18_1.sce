// Example 18_1
clc;funcprot(0);
//Given data 
n=10;// Number of fans used 
T_1=35;// °C
T_2=30;// °C
m_w1=1000;// The quantity of cooling tower circulated through the tower in kg/min
DBT=35;// Dry bulb temperature in °C
WBT=25;//Wet bulb temperature in °C
C_pw=4.2;// kJ/kg°C
RH=90;// Relative humidity in %

//Calculation
//The conditions of air at inlet and outlet are represented on psychrometric chart as shown in Fig.Prob.18.1(b)
// From psychrometric chart,
H_a1=76.4;// kJ/kg
H_a2=94.5;// kJ/kg
w_1=19;// grams/kg
w_2=24.4;// grams/kg
v_s1=0.895;// m^3/kg
V=(v_s1*m_w1*C_pw*(T_1-T_2))/((H_a2-H_a1)-(((w_2-w_1)/1000)*C_pw*T_2));// m^3/min
C=V/n;// Capacity of each fan in  m^3/min
m_m=(V/v_s1)*((w_2-w_1)/1000)*60;// The quantity of make up in kg/hr
printf('\nThe quantity of air handled=%0.1f m^3/min \nThe quantity of make up water=%0.0f kg/hr',C,m_m);
// The answers provided in the textbook is wrong
