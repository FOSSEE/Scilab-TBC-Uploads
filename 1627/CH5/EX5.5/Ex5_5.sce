clc
//initialisation of variables
sg=0.86
m=6*10^-3//N.s/m^2
f=250*10^-3//liters/min
t=1/60//sec
d=5*10^-2//m
y=9802//N/m^3
g=9.8//m/s^2
//CALCULATIONS
V=(4*f*t)/((%pi)*(d)^2)//m/s
P=(y*sg)/(g)//N.s^2/m^4
NR=(V*d*P)/(m)
//RESULTS
printf('The lminr or flow turbulent=% f',NR)
