//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
h=4//ft
h1=3.24//ft^3/min
d=0.785//in
v=5.26//ft^3/min
//CALCULATIONS
Cd=h1/v//ft
C=1/4*%pi*(d)^2/(1/4*%pi*(1)^2)//ft^3
V=Cd/C
//RESULTS
printf('the coefficients of discharge velocity and contraction=% f',V)
