clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
sm=13.6 
s=1
Q=1 //m^3/s
d2=0.25 //m
d1=0.5 //m
nu=1e-6
//calculations
RN=Q*d1/(%pi/4 *d1^2 *nu)
Cv=0.98
yd= Q^2 *(1-d2^4 /d1^4)/(Cv^2 *%pi/4 *d2^2 *2*g)
y=yd/(sm/s -1)
//results
printf("Mercury manometer reading = %.2f cm",y*100)
