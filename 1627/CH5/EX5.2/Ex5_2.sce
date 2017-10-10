clc
//initialisation of variables
m=1635//kg
g=9.8//m/s^2
a=10*10^-2//m
s=150//cm
A=78.5//cm^2
t=4//s
p1=7460
//CALCULATIONS
P=(4*m*g)/(%pi)*(a)^2//Pa
CHP=(P)*(A)*(s)/((p1)*(t))*0.1//hp
//RESULTS
printf('The system pressure and cylinder horsepower is=% f hp',CHP)
