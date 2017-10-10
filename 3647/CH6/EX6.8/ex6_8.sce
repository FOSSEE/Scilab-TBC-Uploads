//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
e=30*10^2//lbf/in^2
b=15//in
t=50//percent
p=1.5//in
v=6//in
h=2240//lbf
I=0.0038//in
//CALCULATIONS
W=1/2*v*I//in tonf
w1=W*p//in tonf
T=sqrt((v^2*h)/(2*%pi/4*e))/((b)/(p)^2/(1)^2)*10//in
//RESULTS
printf('the total energy in the bar=% f in',T)
