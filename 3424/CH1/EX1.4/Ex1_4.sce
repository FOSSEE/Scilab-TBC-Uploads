clc
//Initialization of variables
u = 0.04 // lb-s/ft^2
V = 2 //ft/s
h = 1/60 // ft
//Calculations
T = (u*3*V)/h
// results
printf("The shearing stress is %.1f lb/ft^2",T)
