// Example 3_6
clc;funcprot(0);
// Given data
T_1=20;// °C
T_2=100;// °C
p_1=0.100;// MPa
p_2=1.00;// MPa
rho=515;// kg/m^3
c=1.76;// kJ/kg.K.

// Solution
deltau=c*((T_2+273.15)-(T_1+273.15));// The change in specific internal energy in kJ/kg
v=1/rho;// The specific volume in m^3/kg
deltah=deltau+(v*((p_2*10^3)-(p_1*10^3)));// The change in specific enthalpy in kJ/kg
printf('\nThe change in specific internal energy,u_2-u_1=%3.0f kJ/kg \nThe change in specific enthalpy,h_2-h_1=%3.0f kJ/kg',deltau,deltah);
