clc
//initialization of new variables
clear
c=3.5 //m
b=10 //m
u=20 //km/h
r=1.2 //kg/m^3
a=5 //degrees
//calculations
a=a*%pi/180
Cl=2*%pi*a/(1+2*c/b)
L=Cl*0.5*r*(u/3.6)^2*(c*b)
AR=b/c
Cdi=Cl^2/(%pi*AR)
Di=Cdi*0.5*r*(u/3.6)^2*(c*b)
//results
printf('Lift = %.2f N',L)
