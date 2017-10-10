// Example 3_9
clc;funcprot(0);
// Given data
v=10;// The volume of the tank in m^3
rho_s0=3.0;// The initial salt density in kg/m^3
t=0;// Time in s
Q=0.01;// The volume flow rate in m^3/s

// Calculation 
// (b)
// V=Q*t;
V=v*log(2);//
printf("\nThe volume of fresh water,V=%0.3f m^3",V);
