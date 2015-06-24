clc
//initialization of new variables
clear
D=0.3 //m
u=35 //m/s
r=1.2 //kg/m^3
mu=1.81*10^-5
St=0.23
//calculations
Re=r*u*D/mu
f=St*u/D
//results
printf('So there are %d full cycles per second',f)
