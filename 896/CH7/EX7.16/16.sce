clc
//Example 7.16
//calculate the verticle downward velocity of air hitting an aircraft wing
l=15//m length of wing
b=3//m thickness of wing
A=l*b//m^2 area of the colliding surface of the wing
rho_air=1.21//Kg/m^3
Vx=50//m/s
m=rho_air*A*Vx//Kg/s
Fy=9810//N Weight of the aircraft
Vy=Fy/m//m/s
printf("The verticle downward velocity of air hitting the aircraft wing is %f m/s",Vy);