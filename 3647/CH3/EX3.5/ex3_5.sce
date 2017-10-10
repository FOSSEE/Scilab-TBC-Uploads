//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
w=3//lbf
v=5//ft
a=60//degree
g=32.2//ft
u=28.4//ft/s
t=25.4//ft/s
q=12//ft
p=1.5//ft
//CALCULATIONS
U=sqrt(g*v)//ft/s
T=w*(t)^2/(2*g)+w*cosd(a)//lbf
W=q+p//lbf
//RESULTS
printf('the tension in the string at position C=% f lbf',W)
