// Example 16_5
clc;funcprot(0);
// Given data
T=-20.0+273.15;// K
p=0.500;// atm
M=0.850;// The Mach number
k=1.40;// The specific heat ratio
R=286;// J/kg.K
g_c=1;// The gravitational constant

// Solution
V=M*sqrt(k*g_c*R*T);// m/s
T_os=T*(1+(((k-1)*M^2)/2));// K
T_os=T_os-273.15;// °C
p_os=p*(1+(((k-1)*M^2)/2))^(k/(k-1));// atm
p_os=p_os*1.013*10^2;// kPa
printf("\nThe aircraft’s velocity,V=%3.0f m/s \nThe isentropic stagnation temperature,T_os=%2.1f°C \nThe isentropic stagnation pressure,p_os=%2.1f KPa",V,T_os,p_os);
