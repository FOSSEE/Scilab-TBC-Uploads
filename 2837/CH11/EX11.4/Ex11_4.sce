clc
clear
//Initialization of variables
J=778 //ft.lb/Btu
D=2.067/12 //ft
l=100 //ft
P=20 //psia
R=53.35 
T=600 //R
mu=0.0486 //lb /ft.hr
v=50 //ft/s
g=32.17 //ft/s^2
//calculations
f=0.0235
ds=f*v^2 *l /(J*2*D*g*T)
//results
printf("Change in entropy = %.6f Btu/lbm R",ds)
