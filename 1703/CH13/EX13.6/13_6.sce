clear
clc
//initialisation of variables
P= 10 //lb/in^2
r1= 0.5 //ft
r= 0.25 //ft
f= 42.3 //ft/sec
b= 1/40
Tt= 1400 //lb
//CALCULATIONS
Q= 2*%pi*r*b*f
p1= 34+P
Fu= p1*%pi*(r-(r/4))*144/2.3
Fr= Fu-Tt
//RESULTS
printf ('Quantity = %.2f cusecs ',Q)
printf ('\n Resultant force on the plate = %.f lb ',Fr)

//The answer is a bit different due to rounding off error in textbook
