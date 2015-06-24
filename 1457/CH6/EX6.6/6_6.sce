clc
//Initialization of variables
V1=150*44/30
Q=20000/2
d=6.5 //ft
rho=0.072
//calculations
A=%pi/4 *(d)^2
V=Q/A
dV=2*(V-V1)
Ft=rho/32.2 *Q*2*dV
eta=1/(1+ dV/(2*V1))
dP=Ft/2 /(%pi/4) /d^2
hpp=Q*dP/550
//results
printf("pressure rise = %d psf",dP)
printf("\n horsepower input = %d hp ",hpp)
