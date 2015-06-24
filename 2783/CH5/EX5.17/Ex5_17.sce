clc
//initialization of new variables
clear
D=0.5 //m
H=0.5 //m
d=1 //m
g=9.8 //m/s^2
//calculations
Cd=0.399+0.0598*H/D
Q=Cd*d/2*sqrt(2*g)*H^(3/2)
//results
printf('Flow rate is Q = %.3f m^3/s',Q)
