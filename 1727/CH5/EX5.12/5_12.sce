clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
h=4 //m
d=0.03 //m
Qa=3.8/1000 //m^3/s
x=2.5 //m
y=0.41 //m
//calculations
Qth = %pi/4 *d^2 *sqrt(2*g*h)
Cd=Qa/Qth
Cv=sqrt(x^2 /(4*y*h))
Cc=Cd/Cv
//results
printf("Cd = %.2f",Cd)
printf("\n Cv = %.3f",Cv)
printf("\n Cc= %.2f",Cc)
