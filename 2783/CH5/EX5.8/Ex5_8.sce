clc
//initialization of new variables
clear
h=20 //m
a=2 //m
f=0.015
D=0.3 //m
K=0.3
g=9.8 //m/s^2
rho=804 //kg/m^3
mu=1.9*10^-3 //N s/m^2
//calculations
u2=sqrt((h+a)*2*g/(1+f*202/D+2*K))
S=%pi*D^2/4
Q=u2*S
Re=rho*u2*D/mu
//results
printf('Average discarge velocity = %.2f m/s',u2)
printf('\n Re = %.3e ',Re)
