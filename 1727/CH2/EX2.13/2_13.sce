clc
//Initialization of variables
g=9.81 //kN/m^2
hc=1 //m
l=3 //m
b=0.5 //m
//calculations
Ax=l*b //m^2
Fx=g*hc*Ax
Fz=g*(0.5* %pi/4 *b^2)*l
F=sqrt(Fx^2 + Fz^2)
theta=atand(Fz/Fx)
//results
printf("Magintude of resultant force = %.2f kN",F)
printf("\n Directionn of the resultant force = %.1f deg",theta)
