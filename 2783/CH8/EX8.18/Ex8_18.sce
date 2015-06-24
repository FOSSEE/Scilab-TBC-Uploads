clc
//initialization of new variables
clear
c=3.5 //m
u=20 //km/h
alpha=5 //degrees
r=1.2 //kg/m^3
//calculations
alpha=alpha*%pi/180
Cl=2*%pi*alpha
L=0.5*Cl*r*(u/3.6)^2*c*1
//results
printf('Lift per unit span is %.2f N',L)
