// Example 10_2
clc;funcprot(0);
// Given data
p_0=0.101;// MPa
T_0=20.0+273;// K
p=1.500; // MPa
T=20+273;// K
C_v=0.781;// kJ/kg.K
C_p=1.004;// kJ/kg.K
R=0.286;// kJ/kg.K
g=9.81;// m/s^2
g_c=1;// The gravitational constant

// Calculation
// Assume deltau=u-u_0;deltav=v-v_0;deltas=s-s_0;
deltau=C_v*(T-T_0);// kJ/kg
deltav=R*((T/(p*10^3))-(T_0/(p_0*10^3)));// kJ/kg
deltas=(C_p*log(T/T_0))-(R*log((p*10^3)/(p_0*10^3)));// kJ/kg
a=deltau+(p_0*10^3*deltav)-(T_0*deltas)+0+0;// kJ/kg
printf("\nThe specific available energy,a=%3.0f kJ/kg",a);
