//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//friction of bearings is to to neglected
clc
//initialisation of variables
h=2240//ft
g=32.2//ft
g1=15//in
w=1200//lbf
q=12//ft
r=1.5//ft
t=3.28//tonf ft
t1=1.7//tonf ft
x=550//ft
s=6//ft
//CALCULATIONS
T=((w*(g1/q)^2)/(h*g))*(3/r)//tonf ft
T1=t-t1+T//tonf ft
W=(T1*h*s/(r))/(x)//ft lbf
//RESULTS
printf('the friction of bearings is to to neglected =% f',W)
