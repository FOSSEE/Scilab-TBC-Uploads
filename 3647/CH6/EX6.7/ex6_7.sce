//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
h=3//in
s=10.2//tonf/in^2
v=0.006//in
d=0.5//in
d1=0.75//in
w=20//lbf
q=v/8//tonf/in^2
x=0.029//in
//CALCULATIONS
M=s/q//tonf/in^2
E=M*(x)/(h*12)//tonf/in^2
//RESULTS
printf('the corresponding stress=% f tonf/in^2',E)
