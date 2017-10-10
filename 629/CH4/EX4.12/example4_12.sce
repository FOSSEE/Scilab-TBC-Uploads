clear
clc
//Example 4.12 VELOCITY AND PRESSURE DISTRIBUTION IN A FREE VORTEX
rho=1.2; //density[kg/m^3]
r1=4; //[km]
r2=10; //[km]
V1=40; //velocity[m/s]
//Velocity distribution, V=C/r
C=r1*V1 
V2=C/r2 //[m/s]
printf("\nThe velocity at 10km from the center = %.f m/s.\n",V2)
//Bernoulli equation, for horizontal plane
delp=rho*(V1^2-V2^2)/2 //delp=p2-p1,[Pa]
printf("\nThe pressure difference between two locations = %.f Pa.\n",delp)