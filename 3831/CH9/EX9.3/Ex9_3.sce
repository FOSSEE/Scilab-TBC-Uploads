// Example 9_3
clc;funcprot(0);
// Given data
m=0.800;// kg/s
V_1=93.0;// m/s
// Station 1
p_1=97.0;// kPa
T_1=80.0;// °C
// Station 2
p_2=101.3;// kPa
g_c=1;// The gravitational constant
c_p=523;// J/(kg.K)
R=208;// J/(kg.K)

// Calculation
T_2=(T_1+273.15)+((V_1^2)/(2*g_c*c_p));// K
S_p=m*((c_p*log(T_2/(T_1+273.15)))-(R*log(p_2/p_1)));// The rate of entropy production within the diffuser in W/K
printf("\nThe rate of entropy production within the diffuser,S_p=%1.2f W/K",S_p);
