clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
d1=7.5 //cm
d2=3 //cm
P1=300+101.3 //kPa
P2=25 //kPa
//calculations
V1=sqrt(2*g/ ((d1/d2)^4 -1) *(P1*10^3 /(rho*g) -P2*10^3 /(rho*g)))
Q=%pi/4 *(d1/100)^2 *V1
//results
printf("Max discharge = %.4f m^3/s",Q)
//The answer given in textbook is wrong. Please use a calculator to verify
