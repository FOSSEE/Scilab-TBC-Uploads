clc
//initialisation of variables
v=25*10^-2//m
a=8//m^3/min
t=1/60//sec/min
f=0.015
p=100//m
p1=1.2//kg/m^3
p2=2.7//m/s
g=9.8//m/s^2
q=998//kg/m^3
v1=9802//N/m^3
//CALCULATIONS
V=(4*a*t)/((%pi)*(v)^2)//m/s
hf=(f)*((p)*(p2)^2*(p1))/(v*2*g*v1)//m^-3
P=v1*hf*10//Pa
//RESULTS
printf('The pressure drop is=% f Pa',P)
