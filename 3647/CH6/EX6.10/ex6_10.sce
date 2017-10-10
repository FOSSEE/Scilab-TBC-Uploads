//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
clear
E=2*10^6//lbf/in^2
s=600//lbf/in^2
w=12//in
l=80//tonf
w1=4//ft
E1=30*10^6//lbf/in^2
h=2240//in
s2=10.9//in^2
F=9000//lbf/in^2
//CALCULATIONS
L=(F*w1*w/E1)//in
//RESULTS
printf('the column shortens by=% f in',L)
