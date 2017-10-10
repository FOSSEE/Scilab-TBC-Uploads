// Example 5_13
clc;funcprot(0);
// Given data
h=100;// Height in m
A_n=1.0;// The area of the turbine jet stream in in^2
alpha=20;// The blade angle in degree
g=9.807;// The acceleration due to gravity in m/s^2
rho=1*10^3;// The density of water in kg/m^3

// Calculation
// (a)
V_n=sqrt(2*g*h);// The nozzle velocity V_n in m/s
printf("\n(a)The nozzle velocity V_n=%2.2f m/s",V_n);
// (b)
maxP_b=((1+cosd(alpha))/2)*(rho*(A_n*2.54*10^-2)^2*(V_n^3/2))/1000;// The maximum power P, of the turbine in kW
printf("\n(b)The maximum power P_t of the turbine is %2.2f kW.",maxP_b);
// (c)
V_b=V_n/2;// The blade speed in m/s
F_b=rho*(A_n*2.54*10^-2)^2*(V_n-V_b)^2*(1+cosd(alpha));// The force in N
printf("\n(c)The blade speed,V_b=%2.2f m/s \n   The force when maximum power is being produced,F_b=%3.1f N",V_b,F_b);
