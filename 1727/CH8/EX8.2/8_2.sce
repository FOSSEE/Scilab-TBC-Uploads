clc
//Initialization of variables
b=6 //m
y=2 //m
sf=0.005
slope = 2
gam=9.81*1000
Q=65 //m^3/s
//calculations
A=(b+ 2*y)*slope
P=b+ 2*y*sqrt(slope^2 +1)
R=A/P
V=Q/A
n=R^(2/3) *sf^(1/2) /V
//results
printf("Value of mannings coefficient = %.3f",n)
