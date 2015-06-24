//Example 7.4, page no-439
clear
clc
//(a)
g=980
h=4
R=0.5
t=1
V=10
l=5
v=(3.14*g*h*t*R^4)/(8*l*V)
printf("(a)\n v = %.2f stokes",v)
mu=0.3925
rho=mu/v
printf("\n(b)\n Density of the fluid rho = %.3f gm/cm^3",rho)
