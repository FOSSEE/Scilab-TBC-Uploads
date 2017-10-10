//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//weight of flywheel and the work done by frictional torque
//initialisation of variables
w=140//rev
r=8//in
g=12//in
t=30//mile/h
q=(1/4)//tonf
I=0.99//slug ft^3
p=32.2//ft^2
//CALCULATIONS
W=(I*p)/(r/g)^2//lbf
T=(I*(2*%pi)^2)/(2*(2*%pi)*w)//lbf ft
//RESULTS
printf('The weight of flywheel=% f lbf',W)
printf('the work done by frictional torque in stopping flywheel=% f lbf ft',T)
