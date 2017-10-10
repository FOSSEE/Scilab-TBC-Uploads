// Example 4_5
clc;funcprot(0);
// Given data
T_1=20.0;// °C
n=1.35;// The polytropic index
m=0.0100;// kg
p_1=0.100;// MPa
m_2=0.0100;// kg
p_2=10.0;// MPa

// Solution
T_2=((T_1+273.15)*(p_2/p_1)^((n-1)/n))-273.15;// °C
// Using Table C.13b of Thermodynamic Tables to accompany Modern Engineering Thermodynamics to find the value of the gas constant for methane,
R_methane=0.518;// kJ/kg.K
W_12=(m*R_methane*((T_2+273.15)-(T_1+273.15)))/(1-n);// kJ
printf('\nThe moving boundary work required,W_12=%1.2f kJ',W_12);
