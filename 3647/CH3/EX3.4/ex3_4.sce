//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
w1=8//lbf
s=3//ft
m=35//lbf
g=32.2//ft/s
//CALCULATIONS
U=sqrt(g*s)//ft/s
T=w1+w1//lbf
P=m-w1//lbf
Umax=sqrt(P*g*s/w1)//ft/s
//RESULTS
printf('the centrifugal force=% f ft/s',Umax)
