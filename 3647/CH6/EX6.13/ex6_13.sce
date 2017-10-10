//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
clear
p=14.7//lbf/in^2
w=15000//lbf/in^2
p1=190//lbf/in^2
q=0.35//percent
q1=0.75//percent
w1=2//ft
q2=36//tonf/in^2
f=6//in
r1=3/8//in
p2=4//in
h=2240//in
//CALCULATIONS
A=w*q//lbf/in^2
E=w*q1//lbf/in^2
M1=(p2*A*(1/2)/(p1-p))//in
M2=(w1*E*(1/2)/(p1-p))//in
M3=p2*r1*((q2*h)/f)/(w1*12)//lbf/in^2 gauge
//RESULTS
printf('the Maximum possible diameter of cylinder =% f in',M2)
printf('the Maximum allowable pressure=% f lbf/in^2 gauge',M3)
