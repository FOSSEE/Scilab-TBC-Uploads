clc
clear
//input
p=2*10^-6//pd across wire
v=1.5//voltage 
l=1.5*10^3//length of potentiometer
R=7//resistance
//calculation
vw=p*l//pd across the wire
x=(7*v/vw)-R//resistace of x
//output
printf("the resistance of x is %3.0f ohm",x)
