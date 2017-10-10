//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
a=60//degre
w=2.5//ft
x=3//ft
p=6*3//ft^2
h=62.4//ft
p1=3*6^3/12//ft^4
//CALCULATIONS
D=w+x*sind(a)//ft
T=h*p*D//lbf
P=p1*sind(a)^2/(p*D)+D//ft
//RESULTS
printf('the depth of centre of pressure=% f ft',P)
