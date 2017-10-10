// Example 16_2
clc;funcprot(0);
// Given data
T=20+273.15;// K
V=25.0;// m/s
k=1.40;// The specific heat ratio
p=0.101;// MPa
g_c=1;// The gravitational constant
c_p=1.004;// kJ/kg.K
R=0.286;// kJ/kg.K

// Solution
p_os=p*(1+((V^2/1000)/(2*g_c*c_p*T)))^(k/(k-1));// The isentropic stagnation pressure in MPa
rho=(p*10^3)/(R*T);// kg/m^3
rho_os=rho*(1+((V^2/1000)/(2*g_c*c_p*T)))^(1/(k-1));// The isentropic stagnation density in kg/m^3
printf("\nThe isentropic stagnation pressure,p_os=%0.4f MPa \nThe isentropic stagnation density,rho_os=%1.4f kg/m^3",p_os,rho_os);
