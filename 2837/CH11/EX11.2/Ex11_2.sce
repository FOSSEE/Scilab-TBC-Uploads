clc
clear
//Initialization of variables
eps=0.00015 
D=2.067/12 //ft
l=100 //ft
P=20 //psia
R=53.35 
T=600 //R
mu=0.0486 //lb /ft.hr
v=50 //ft/s
g=32.17 //ft/s^2
//calculations
rho=P*144/(R*T)
Re=D*v*rho*3600/(mu)
ed=eps/D
disp("From figure 11.5")
f=0.0235
dp=f*l*rho*v^2 /(2*D*g) /144
change=dp/P *100
//results
printf("Change in pressure = %.2f psi",dp)
printf("\n Percentage change in pressure = %.2f percent",change)
