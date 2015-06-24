clc
clear
//input
l=6.5//length
m=0.06//mass of wire
m1=10//mass attached
g=9.8//acceleration due to gravity
e=2.1*10^11//youngs modulus
ro=8*10^3//density of steel
//calculation
e1=m1*g*ro*l*l/(e*m)//extension caused 
pe=0.5*g*m1*e1//potential energy 
//output
printf("the extension caused is %3.3e m",e1)
printf("\n the potential energy is %3.3f J",pe)
