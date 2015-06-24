clc
//initialization of new variables
clear
D=0.65 //cm
u=50 //km/h
r=1.2 //kg/m^3
mu=1.81*10^-5
//calculations
D=D*10^-2
Re=r*u*D/(3.6*mu)
St=0.21 //based on Re
f=St*u/(3.6*D)
//results
printf('So there are %d full cycles per second',f)
