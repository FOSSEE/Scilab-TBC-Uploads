//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//torque to acceleration drum and truck
clc
//initialisation of variables
v=20//ft/s
s=150//ft
h=2240//ft
g=32.2//ft
d=3//ft
p=364.9//lbf
q=4//ft
//CALCULATIONS
A=v^2/(2*s)//ft/s^2
T=(h*(d)^2/g)*(A/q)+p*q//lbf ft
//RESULTS
printf('the torque to acceleration drum and truck=% f lbf ft',T)
