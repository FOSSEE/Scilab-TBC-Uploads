//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//axis of rotation thus balancing the flywheel
//initialisation of variables
w=2000//lbf
q=0.01//in
f=600//rev/min
r=18//in
g=32.2//ft^2
d=12//in
s=1.5//ft
//CALCULATIONS
F=(w/g)*(f*2*%pi/60)^2*(q/d)//lbf
W=w*(q/d)/s//lbf
//RESULTS
printf('the axis of rotation thus balancing the flywheel=% f lbf',W)
