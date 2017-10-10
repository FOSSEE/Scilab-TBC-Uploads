//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
d=7.5//in
m1=8000//lbf/in^2
m2=2000//lbf/in^2
h1=3//in
d1=2//in
d4=57//lbf in
W=2.74//lbf in
//CALCULATIONS
P=%pi*d1^4/32//in^4
M=(m1/1)*P//lbf in
T=M/(8*(d/d1))//lbf
A=T/m2//in^2
B=sqrt((4*A)/%pi)//in
//RESULTS
printf('the bolt diameter =% f in',B)
