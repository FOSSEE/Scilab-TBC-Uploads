//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//tangential force
clc
//initialisation of variables
I=179.2//lbf ft
h=2240//ft
w=4//ft
w1=5//ft
r=120//ft
g=32.2//ft
p=100//ft
t=60//ft
//CALCULATIONS
M=(w*h*(w1)^2)/g//slug ft^3
T=I/M//rad/s
D=p*(2*%pi)/(t*T)//sec
N=(p*(2*%pi)/t)/r//rad/s^2
T1=M*N//lbf ft
B=T1-I//lbf ft
F=B/2*1/2//lbf
//RESULTS
printf('the deceleration =% f sec',D)
printf('the tangential force on brake rim=% f lbf',F)
