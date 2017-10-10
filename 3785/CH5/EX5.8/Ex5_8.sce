// Example 5_8
clc;funcprot(0);
// Given data
V_f=200;// The speed of flying air plane in km/h
rho=1.2;// The density of air in kg/m^3
F=3*10^3;// The propulsive force in N
D_p=2;// The diameter of the propeller in m 

// Calculation
// (a)
V_f=(V_f*10^3)/3600;// The speed of flying air plane in m/s
A_p=(%pi*D_p^2)/4;// Area of propeller in m^2
V_w=sqrt((V_f^2)+((2*F)/(rho*A_p)));// The wake speed in m/s
printf("\nThe wake speed,V_w=%2.2f m/s",V_w);

// (b)
n_prop=(2*V_f)/(V_w+V_f)*100;// The propulsive efficiency in %
printf("\nThe propulsive efficiency is %2.2f percentage",n_prop);
// (c)

P_p=(F*(V_w+V_f))/(2*10^3);// The engine powerin kW
printf("\nThe engine power for this air craft is %3.1f kW",P_p);
