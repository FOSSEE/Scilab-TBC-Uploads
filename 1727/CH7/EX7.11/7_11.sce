clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
d1=2.5*10^-2 //m
d2=7.2*10^-2 //m
Q=100*10^-3 //m^3/hr
//calculations
V1=Q/(60*%pi/4*d1^2)
V2=(d1/d2)^2 *V1
dp= -(V2^2 -V1^2 + (V1-V2)^2)/(2*g)
Pdiff=dp*g*rho
//results
printf("pressure difference = %.2f kN/m^2",Pdiff/1000)
//The answers are a bit different due to rounding off error
