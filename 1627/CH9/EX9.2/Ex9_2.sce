clc
//initialisation of variables
g=9.8//m/s^2
m=102//kg
a=20*40*10^-4//cm
h=7.62*10^-5//m
Mu=4.76*10^-1//N.s/m^2
v=0.5//m/s
//CALCULATIONS
P=(m*g)/(a)//Pa
F=(Mu*v)/(P*h)
//RESULTS
printf('The friction factor for the bearing is=% f',F)
