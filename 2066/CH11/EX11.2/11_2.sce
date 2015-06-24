clc
clear
//Initialization of variables
Re=4000
rho=1.94 //slugs/ft^3
vm=5.91 //ft/s
mu=3.24e-5 //ft-lb/s^2
Rm=3.12 //ft
//calculations
lam3=Re*mu/(vm*4*Rm*rho)
lam=lam3^(2/3)
//results
printf("Minimum scale ratio = %.2e",lam)
