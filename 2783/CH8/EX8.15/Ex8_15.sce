clc
//initialization of new variables
clear
w=2 //m
u=100 //km/h
r=1.2 //kg/m^3
mu=1.81*10^-5
//calculations
D=w
Re=r*u*D/(3.6*mu)
St=0.23 //based on Re
f=St*u/(3.6*D)
l=u/(3.6*f)
//results
printf('Oscillation frequency is %.2f Hz',f)
printf('\n The distance between two cycles is %.2f m',l)
