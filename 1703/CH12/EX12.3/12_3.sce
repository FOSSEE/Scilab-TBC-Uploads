clear
clc
//initialisation of variables
vs= 16 //ft/sec
lm= 1 //ft
l= 16 //ft
R= 9.6 //lb
ds= 64 //lb/ft^3
dm= 62.4 ///lb/ft^3
A= 40 //ft^2
//CALCULATIONS
vm= vs*sqrt(lm/l)
rs= 0.0095*vm^1.9*A
rw= R-rs
Rw= rw*ds*(l/lm)^3/dm
Rs= 0.009*vs^1.85*A*l^2
R1= Rw+Rs
//RESULTS
printf ('speed = %.f b ft/sec',vm)
printf ('\n Total resistance = %.f lb ',R1)

//The answer is a bit different due to rounding off error in textbook

