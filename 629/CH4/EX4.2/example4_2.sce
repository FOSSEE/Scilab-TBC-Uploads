clear
clc
//Example 4.2 APPLICATION OF EULER’S EQUATION TO ACCELERATION OF A FLUID
g=9.81; //[m/s^2]
az=100; //acceleration in z direction [m/s^2]
rho=10^3; //[kg/m^3]
//Integrating, d(p+g*rho*z)/dz=-rho*az
//(p2+rho*g*z2)-(p1+rho*g*z1)=-rho*az*(z2-z1)
delz=0.1; //delz=z2-z1,[m]
p2=0;
p1=(p2+rho*(g+az)*delz)/10^3 //[kPa]
printf("\nThe gage pressure on the piston, p = %.1f kPa, gage.\n",p1)