clc
//initialisation of variables
F=37//N
g=9.8//m/s^2
w=90//kg
L=7.5*10^-2//m
D=5*10^-2//mm
//CALCULATIONS
f=F/(w*g)
P=(w*g)/(L*D)//kPa
//RESULTS
printf('The friction coefficent and lubricant pressure is=% f kPa',P)
