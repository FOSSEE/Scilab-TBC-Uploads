//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
a=10//ft/s
x=1/12//ft/s
g=32.2//ft
//CALCULATIONS
P=2*%pi*sqrt(x/a)//sec
L=(P)/(2*%pi/sqrt(g))/2//ft
//RESULTS
printf('the simple pendulum =% f ft',L)
