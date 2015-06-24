clc
//initialization of new variables
clear
h=15 //m
D=0.25 //m
u=30 //m/s
rho=1.2 //kg/m^3
mu=1.81*10^-5
Cd=0.7
Re=rho*u*D/mu
D=Cd*1/2*rho*u^2*(h*D)
M=h/2*D
//results
printf('D = %.1f N',D)
printf('\n M = %d N m',M)
