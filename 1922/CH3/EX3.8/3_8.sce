clc
clear
//Initialization of variables
u1=1.1 //m/s
rho1=1.21*10^3 //kg/m^3
d1=0.078
z1=4
h2=18 //m
g=9.806
//calculations
mdot= u1*rho1*%pi/4 *d1^2
Wsd= z1+h2
Ws=Wsd*mdot*g
dP= Ws*rho1/mdot
//results
printf("Power input = %d W",Ws)
printf("Pressure drop = %.3f Mpa",dP/10^6)
