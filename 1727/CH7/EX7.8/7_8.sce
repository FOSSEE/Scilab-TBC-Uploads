clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
e=0.03*10^-2 //m
l=3000 //m
Q=300*10^-3 //m^3/s
nu=10^-5 //m^2/s
hl=24 //m
//calculations
d5f= l*Q/(%pi/4) * Q/(%pi/4) /(hl*2*g)
f=0.022
d=(d5f*f)^(1/5)
//results
printf("Size of the required pipe = %d cm",d*100)
