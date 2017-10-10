// Example 16_1
clc;funcprot(0);
// Given data
T=20+273.15;// K
V=90.0;// km/h
g_c=1;// The gravitational constant
c_p=1.004;// kJ/kg.K

// Solution
T_0=T*(1+(((V*10^3/(3600*1000))^2)/(2*g_c*c_p*T)));// K
T_0=T_0-273.15;// °C
printf("\nThe stagnation temperature,T_0=%2.1f°C",T_0)
