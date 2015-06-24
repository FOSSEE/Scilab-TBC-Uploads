clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
rho2=13.6*10^3 //kg/m^3
d1=3.2 //m
d2=0.6 //m
//calculations
z1=d1*rho/rho2
head= d2+z1
V=sqrt(2*g*head)
//results
printf("Efflux velocity = %.2f m/s",V)
//The answer is a bit different due to rounding off error.
