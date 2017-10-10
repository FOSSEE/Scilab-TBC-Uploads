//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
w=20//lbf
p=12//ft/s
v1=15//ft/s
g=32.2//ft
v2=10//ft/s
d1=6//in
d2=9//in
a=10.82//in
//CALCULATIONS
Um=(v2*p)/sqrt(a^2-d2^2)//sec^-1
P=2*%pi/Um//sec
V=w*a//in/s
M=w^2*a/p//ft/s
F=(w/g)*M//lbf
//RESULTS
printf('the velocity=% f in',a)
printf('periodic time=% f sec',P)
printf('the maximum velocity=% f in/s',V)
printf('maximum acceleration=% f lbf',F)
