clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
d1=15 //cm
d2=10 //cm
V1=2.4 //m/s
P1=450*10^3 //N/m^2
rho2=900 //kg/m^3
//calculations
V2=d1^2 /d2^2 *V1
P2=g*rho2*(P1/(rho2*g) + V1^2 /(2*g) - V2^2 /(2*g))
Q=%pi/4*(d2/100)^2 *V2
//results
printf("Pressure at 2 = %.2f kN/m^2",P2/1000)
printf("\n Flow rate = %.4f m^3/s",Q)
//The answer given in textbook is wrong. Please verify it.
