clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Vr=10 //m/s
u=8.5 //m/s
A=250/10^4 //m^2
//calculations
V=Vr-u
Q=A*Vr
R=rho*Q*V
P=R*u
eth=1/(1+ V/(2*u))
//results
printf("Power required = %.3f kW",P/1000)
printf("\n Efficiency of jet propulsion = %.2f percent",eth*100)
