//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
p=1.23//ft^2
t=0.197//ft^2
u=1.595//ft^2
g=13.56//ft^2
w=9.2//in
m=0.97//in
//CALCULATIONS
H=(g-1)*w/12//ft^2
Q=m*u*sqrt(H)//ft^3
S=Q*60*62.4/10//gallons/min
//RESULTS
printf('the head difference in feet of water=% f gallons/min',S)
