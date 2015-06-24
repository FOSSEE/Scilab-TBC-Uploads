clc
clear
//Input data
do=0.902*10^3;//Density of oil in kg/m^3
Pg=2*10^5;//Gauge pressure in N/m^2
g=9.81;//Gravity in m/sec^2
ho=2;//Level of oil in m
d=2;//Diameter of cylinder in m
pi=3.141595;//Constant value of pi

//Calculations
A=(pi/4)*d^2;//Area of cylinder 
Po=do*g*ho;//Pressure due to oil in N/m^2
W=(Pg+Po)*A;//Weight of the piston in N

//Output
printf('The total weight of piston and slab W = %3.2f N ',W)
