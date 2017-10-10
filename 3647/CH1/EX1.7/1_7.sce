//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//equation of motion and acceleration
clc
//initialisation of variables
d=4//ft
w=5//lbf
v=10//lbf
q=9.27//ft/s
//CALCULATIONS
W=w*d//ft lbf
P=v*d//ft lbf
M=(q)^2/d/2//ft/s^2
//RESULTS
printf('the equation of motion and acceleration=% f ft/s^2',M)
