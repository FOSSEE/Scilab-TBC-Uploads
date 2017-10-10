clear
clc
//Example 5.1 VOLUME FLOW RATE AND MEAN VELOCITY
m=3; //mass flow rate[kg/s]
rho=1.24; //density[kg/m^3]
Q=m/rho //discharge[m^3/s]
//1m^3=35.31ft^3
printf("\nThe disharge in the pipe in both units is %.2f m^3/s and %.1f cfs.\n\n",Q,Q*35.31)

d=0.3; //diameter[m]
A=(%pi*d^2)/4 //area[m^2]
V=Q/A //mean velocity[m/s]
//1ft=0.3048 m
printf("\nThe mean velocity in the pipe in both units is %.1f m/s and %.f ft/s.\n",V,V/0.3048)