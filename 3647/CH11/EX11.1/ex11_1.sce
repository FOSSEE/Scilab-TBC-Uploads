//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
w=62.5//lbf
a=4*6//ft
x=4//ft
l=(6*6^3)/3-(6*2^3)/3//ft^3
q=24*x//ft^3
//CALCULATIONS
T=w*a*x//lbf
P=l/q//ft
//RESULTS
printf('the depth of centre of pressure=% f ft',P)
