clc
//Initialization of variables
sf=0.0064
n=0.015
Q=6 //m^3/s
gam=9.81*1000
//calculations
AR= n*Q/sqrt(sf)
disp("On trial and error, ")
y=0.385 //m
printf("normal depth = %.3f m",y)
