clc
clear 
printf("example 3.20 page number 109\n\n")

//to find the rate of heat flow

cp_water = 146.5   //in kj/kg
cp_steam = 3040   //in kJ/kg
d = 0.102  //in m
u = 1.5  //in m/s
density = 1000   //in kg/m3

m = (3.14/4)*d^2*u*density;
Q = m*(cp_steam-cp_water);

printf("rate of heat flow = %f kW",Q)
