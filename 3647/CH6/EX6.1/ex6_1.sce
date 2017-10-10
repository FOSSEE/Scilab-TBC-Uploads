//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
b=0.005//in
a=2//tonf
p=10//tonf
l=13500//tonf/in^2
//CALCULATIONS
x=(p/a)*b//in
E=(l*b*1/2)/a//in
//RESULTS
printf('the original length of bar =% f in',E)
