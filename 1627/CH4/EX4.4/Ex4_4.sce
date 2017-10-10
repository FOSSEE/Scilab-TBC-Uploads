clc
//initialisation of variables
f=5//cm
d=10//cm
r=150//liters
p=4//in
A2=7.84*10^-3//m^2
//CALCULATIONS
A=((%pi)*(f*10^-2)^2)/p//m^2
V1=(r*10^-3)*(1/60)/A//m/s
V2=(A*V1)/A2//m/s
//RESULTS
printf('The velocity of the fluid in both pipes=% f m/s',V2)
