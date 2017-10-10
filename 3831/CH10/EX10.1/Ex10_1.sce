// Example 10_1
clc;funcprot(0);
// Given data
p_0=0.101;// MPa
T=10;// °C
T_0=20+273;// K
L=0.150;// m
D=0.0700;//  m
R=D/2;// m
rho=1000;// kg/m^3
Z=0.762;// m
g=9.81;// m/s^2
g_c=1;// The gravitational constant

// Calculation
m=%pi*R^2*((3/4)*L)*rho;// kg
// From Table C.1b of Thermodynamic Tables to accompany Modern Engineering Thermodynamics 
u=42.0;// kJ/kg
u_0=83.9;// kJ/kg
v=0.001000;// m^3/kg
v_0=0.001002;// m^3/kg
s=0.1510;// kJ/kg.K
s_0=0.2965;// kJ/kg.K
A=m*[(u-u_0)+((p_0*10^3)*(v-v_0))-(T_0*(s-s_0))+0+((g*Z)/g_c)];// kJ
printf("\nThe total availability of the water in the glass relative to the floor,A=%1.2f kJ",A);
