clc
//initialization of new variables
clear
m=90 //kg
D=6 //m
g=9.8 //m/s^2
r=1.2 //kg/m^3
Cd=1.2
//calculations
R=D/2
S=%pi*R^2
U=sqrt(2*m*g/(Cd*r*S))
//results
printf('U = %.2f m/s',U)
