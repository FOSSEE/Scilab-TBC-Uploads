clc
//initialisation of variables
a=0.2//m/sec^2
R=1//m
t1=9//sec
t=3//sec
v=0.36//m/sec^2
a1=0.04//m/sec
a2=0.129//m/sec
//CALCULATIONS
V1=a*t//m/sec
An=v/R//m/sec^2
A=sqrt(a1+a2)//m/sec^2
ta=An/a//m/sec^2
S=a*t1/2//m
//RESULTS
printf('the velocity and acceleration of the particle=% f m',S)
