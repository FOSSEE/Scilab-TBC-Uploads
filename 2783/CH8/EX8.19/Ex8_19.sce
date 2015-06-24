clc
//initialization of new variables
clear
m=50 //kg
r=1.2 //kg/m^3
u=150 //km/h
Cl=0.5
g=9.8 //m/s^2
//calculations
c=m*g/(0.5*r*(u/3.6)^2*Cl)
Cd=0.005 //from figure
r=Cl/Cd
//results
printf('The chord length required is %.2f m',c)
printf('\n Lift to Drag ratio is %d',r)
