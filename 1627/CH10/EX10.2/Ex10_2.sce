clc
//initialisation of variables
p=38//cm^3/rev
Q=65//min
d=1800//rpm
p1=103//bars
h=1/1000//rev/min
//CALCULATIONS
Q1=p*h*d//min
Ev=Q/Q1*100//percent
Ta=(p*10^-6)*(p1*10^5)/(2*(%pi))//N.m
//RESULTS
printf('The volumetric efficiency and torque applied to the shaft is=% f N.m',Ta)
