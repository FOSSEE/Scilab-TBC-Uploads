//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
w=62.5//lbf/ft
w1=1.5//ft
d=4//ft
w2=3//ft
g=0.8//in
p1=2/3*w1//ft
q=2/3*p1//ft
//CALCULATIONS
t1=w1*w*w1/2//lbf
p=(g*w*p1*p1)/2//lbf
A=g*w*p1*1/2//lbf
T=(w*1/2*1/2/2)//lbf
P=t1-p-A-T//lbf
h=2.9*P/(t1*1-(p*2)/3-(p*(1*1/4))-(T*1.33))//ft
F=P*a/w1//lbf
H=F/2//lbf
//RESULTS
printf('depth of forces=% f lbf',F)
printf('the moment of force on hinge=% f lbf',H)
