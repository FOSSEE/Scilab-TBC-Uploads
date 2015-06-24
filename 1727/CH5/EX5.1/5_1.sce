clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
z2=0 //m
z1=8 //m
V2=5 //m/s
V1=3 //m/s
//calculations
Hs=(z2-z1) + (V2^2 -V1^2)/(2*g)
//results
printf("Work done by fluid = %.3f J/N",Hs)
