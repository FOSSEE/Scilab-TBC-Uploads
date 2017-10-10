//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
w=0.5//tonf/in^2
w1=7//tonf/in^2
w2=10//tonf/in^2
t=12.4//tonf/in^2
d1=1.5//in
d2=1.24//in
x=0.495//in
d3=3.02//in
//CALCULATIONS
Y=sqrt((d3/2)^2-(d2/2)^2)//in
S=(1/2*t/(2*Y*w))//tonf/in^2
//RESULTS
printf('the shear stress in fork end=% f tonf/in^2',S)
