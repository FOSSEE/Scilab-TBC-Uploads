clc
//Initialization of variables
l = 12 //ft
b = 5 //ft
a = 40 //degree
R = 3.25 //ft
S0 = 0.0014
n = 0.012
V = 10.2 // ft/s
g  = 32.2 //ft/s^2
// Calculations
A = l*b + b*(b/tand(a)) 
Q = (1.49/n)*A*(R^(2/3))*(S0^(0.5)) //cfs
Fr = V/(g*b)^0.5
// results
printf(" the flow rate is %.f cfs",Q)
printf("\nthe froude number is %.3f",Fr)
