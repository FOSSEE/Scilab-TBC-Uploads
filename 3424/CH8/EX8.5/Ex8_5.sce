clc
// Intialization of variables
V = 10 //ft/s
D = 8/12 //ft
v = 1.89*(10^-4) //ft^2/s
f = 0.022
g = 32.2 // ft/s^2
f1= 0.023
// Calculations
Re = V*D/v
hLl = f1*V^2/(D*2*g)
a = 1.30*(f1^0.2)
// results 
printf (" the duct size is %.3f ft",a)
