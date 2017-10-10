// Example 11_14
clc;funcprot(0);
// Given data
V=0.100;// m^3
p=20.0;// MPa
m=15.6;// kg
T=1000;// °C

// Solution
// From Table C.12b, we find the critical state properties of methane to be
T_c=191.1;// K
p_c=4.64;// MPa
v=V/m;// m^3/kg
v_1=v;// m^3/kg
v_2=v_1;// m^3/kg
// Table C.13b, gives the gas constant for methane as
R=0.518;// kJ/kg.K
// Assume 'a' instead of '
v_Ra=(v*p_c*10^3)/(R*T_c);
T_R=(T+273.15)/T_c;
p_R=32.0;
p_2byp_c=p_R;
p_2_worstcase=p_R*p_c;// MPa
printf("\nThe maximum pressure in the CNG tank at this worst case temperature,(p_2)_worstcase=%3.0f MPa",p_2_worstcase);
