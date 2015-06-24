clc
//Initialization of variables
T=4.5
a=0.6
u=5 //m/s
rho=1000 //kg/m^3
//calculations
sint=0.5*(1- T/(2*%pi*a*u))
theta= asind(sint)
dp= 0.5*rho*u^2 *(1 - (2 + T/(2*%pi*a*u))^2)
//results
printf("Angle = %.1f %.1f degrees",theta,180-theta)
printf("\n Min guage pressure = %.2f kN/m^2",dp/1000)
//The answer in textbook is wrong. please check
