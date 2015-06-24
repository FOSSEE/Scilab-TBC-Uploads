clc
//Initialization of variables
g=9.81 //m/s^2
rho=787 //kg/m^3
Q=90*10^-3 //m^3/hr
d=0.015 //m
k=0.0045*10^-2 //m
nu=1.6e-6
l=5 //m
//calculations
V=Q/(60*%pi/4 *d^2)
Rn=V*d/nu
e=k/d
disp("From moody diagram, f=0.028")
f=0.028
hl=f*l/d *V^2 /(2*g)
Power=rho*g*Q/60 *hl
//result
printf("Head loss = %.2f m",hl)
printf("\n power required  =%.3f kW",Power/1000)
