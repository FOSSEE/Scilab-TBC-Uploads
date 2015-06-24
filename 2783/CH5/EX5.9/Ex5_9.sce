clc
//initialization of new variables
clear
h2=0.2 //m
D=0.01 //m
h1=0.1 //m
rho=1254 //kg/m^3
mu=0.62 //N s/m^2
g=9.8 //m/s^2
//calculations
// Quadratic equation: a*u^2+b*u+c=0
a=1/(2*g)
b=32*mu*h2/(rho*g*D^2)
c=-(h1+h2)
u2a=(-b+sqrt(b^2-4*a*c))/(2*a)
u2b=(-b-sqrt(b^2-4*a*c))/(2*a)
u2=max(u2a,u2b)
//results
printf('Exit velocity is %.3f m/s',u2)
// Answer in the text differs by a scale of 10
