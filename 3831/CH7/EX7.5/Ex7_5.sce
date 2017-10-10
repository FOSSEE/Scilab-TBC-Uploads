// Example 7_5
clc;funcprot(0);
// Given data
m=0.035;// kg
p_1=0.100;// MPa
T_1=20.0;// °C
p_2=5.00;// MPa
k=1.4;// The specific heat ratio for air
R_air=0.286;// kJ/kg.K

// Solution
T_2=((T_1+273.15)*(p_2/p_1)^((k-1)/k))-273.15;// °C
v_1=(m*R_air*(T_1+273.15))/(p_1*10^3);// m^3/kg
v_2=v_1*((T_2+273.15)/(T_1+273.15))^(1/(1-k));// m^3/kg
printf('\nThe final temperature,T_2=%3.0f°C \nThe specific volume of the air,v_2=%0.5f m^3/kg',T_2,v_2);
