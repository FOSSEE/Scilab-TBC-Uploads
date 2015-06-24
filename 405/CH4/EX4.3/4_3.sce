clear;
clc;
printf("\t\t\tExample Number 4.3\n\n\n");
// pulsed energy at surface of semi-infinite solid
// illustration4.3
// solution

rho = 7800;// [kg/cubic meter] density of slab
c = 460;// [J/kg degree celsius] constant
alpha = 0.44*10^(-5);// [square meter/s] constant
Ts = 40;// [degree celsius] initial temperature of of slab
x = 0.0;// [m] depth at which temperature is calculated
t = 2;// [s] time after which temperature is calculated
// this problem is a direct application of equation (4-13b)
// we have 
Qo_by_A = 10^(7);// [J/square meter] heat flux
To = Ts+(Qo_by_A/(rho*c*(%pi*alpha*t)^(1/2)))*exp(-x^(2)/(4*alpha*t));// [degree celsius] surface temperature at x = 0 
printf("surface temperature at x = 0 and at t = 2 second is %f degree celsius",To);
x = 0.002;// [m] depth at which temperature is calculated
T = Ts+(Qo_by_A/(rho*c*(%pi*alpha*t)^(1/2)))*exp(-x^(2)/(4*alpha*t));// [degree celsius] temperature at depth x = 0.002  
printf("\n temperature at depth 0.002 m and after 2 second is %f degree celsius",T);




