clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
d2=30/100 //cm
d1=60/100 //cm
Pu=105 //kN/m^2
Pd=75 //kN/m^2
Cc=0.65
//calculations
V22=(2*g/(1 - (d2/d1)^4 + (1/Cc -1)^2)) *(Pu-Pd)*10^3 /(rho*g)
V2=sqrt(V22)
Q=%pi/4 *V2 *d2^2
hl=(1/Cc -1)^2 *V2^2 /(2*g)
//results
printf("Flow rate = %.3f m^3/s",Q)
printf("\n Head loss = %.3f m",hl)
