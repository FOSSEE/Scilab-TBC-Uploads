clc
clear
//Initialization of variables
e=0.01 //ft
rho=2 //slugs/ft^3
mu=2.6e-5 //lb sec/ft^2
speed=10 //knots
L=250 //ft
A=30000 //ft^2
//calculations
V=speed*1.69
Nrl=V*L*rho/mu
Cdf=1/(1.89 + 1.62*log10(L/e))^(2.5)
Fd=Cdf*A*0.5*rho*V^2
hp=Fd*V/550
//results
printf("Total frictional drag = %d lb",Fd)
printf("\n Horsepower required = %.1f hp",hp)

