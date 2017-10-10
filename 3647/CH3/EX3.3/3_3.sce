//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
w1=10//lbf
w2=5//lbf\
g=32.2//ft
h=8//ft
d=3//ft
v=10//lbf
q=15//ft
V=13.9//ft/s
//CALCULATIONS
M=(v*V+w2)/(v+w2)//ft/s
K=(v*(V)^2/(2*g))-(q*(M)^2/(2*g))//lbf
H=(q*(M)^2/(2*g))/q//ft
F=(v*(V)^2/(g*h))//lbf
T=F+v//lbf
//RESULTS
printf('The moment of bodies before impact=% f ft/s',M)
printf('The loss of kinetic energy in impact =% f ft/lbf',K)
printf('Gain in potential energy after impact =% f ft',H)
printf('tension in string centrifugal force weight=% f lbf',T)
