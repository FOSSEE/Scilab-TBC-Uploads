clc
//Initialization of variables
y = 62.4 //lb/ft^3
hC = 1.5 //ft
A = 3 //ft^2
vol = 9*%pi*1/4 //ft^3
//Calculations
F1 = y*hC*A
W = y*vol
Fr = ((F1)^2 + (W)^2)^0.5
//Results 
printf (" the magnitude of the resultant force is %.f lb",Fr)
