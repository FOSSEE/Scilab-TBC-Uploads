// Example 11_15
clc;funcprot(0);
// Given data
p_1=20.0;// MPa
T_1=150;// °C
p_2=0.101;// MPa

// Solution
// From Table C.12b, we find the critical temperature and pressure for CO2 are
T_c=304.2;// K
p_c=7.39;// MPa
M_CO2=44.01;// kg/kg mole
c_p=0.845;// kJ/kg.K
p_R1=p_1/p_c;
T_R1=(T_1+273.15)/T_c;
// Assume s_1=[(h*-h)/T_c]_1
s_1=14.0;// kJ/kgmole·K
p_R2=p_2/p_c;
// Assume s_2=[(h*-h)/T_c]_2
// h_2-h_1=0
T_2=(T_1+273.15)-((s_1/c_p)*(T_c/M_CO2));// K
T_2=T_2-273.15;// °C
printf("\nThe exit temperature of the throttle,T_2=%2.1f°C",T_2);
