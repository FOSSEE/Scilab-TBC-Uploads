//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
h1=4//in
d=40//hp
w=30//rev/min
t=33*1/3//degree
h=33000//lbf ft
G=12*10^6//lbf/in^2
q=1.33//lbf ft
j=12//in
//CALCULATIONS
M=((h*d)/(2*%pi*w))//lbf ft
N=M*q//lbf ft
H=((N*j*h1*1/2)/(%pi*(h1)^4/32))//lbf/in^2
A=((j*N*j*180)/(%pi*(h1)^4/32*G*%pi))//degree
//RESULTS
printf('the maximum shear stress=% f lbf/in^2',H)
printf('the angle of twist=% f degree',A)
