clc
clear
//Initialization of variables
g=32.2 //ft/s^2
h=60000 //ft
F=2000 //;b
d=3 //ft
rho=0.00231
//calculations
V=sqrt(2*g*h)
disp("By trail and error")
Cd=0.25
Nm=0.87
A=%pi/4 *d^2
Vt=sqrt(2*F/(Cd*A*rho))
//results
printf("terminal velocity = %.1f ft/s",Vt)
