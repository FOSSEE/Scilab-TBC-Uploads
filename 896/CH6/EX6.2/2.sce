clc
//Example 6.2
//calculate viscosity of fluid using a viscometer
rho=1050//Kg/m^3
g=9.81//m/s^2
dz=0.12//m change in height
d=0.001//m inner diameter of capillary of viscometer
q=10^(-8)//m^3/s
dx=0.1//m length of capillary
mew=(rho*g*dz*(%pi)*d^4)*1000/128/(q*dx)//cP
printf("The viscosity of the fluid is %f cP",mew);