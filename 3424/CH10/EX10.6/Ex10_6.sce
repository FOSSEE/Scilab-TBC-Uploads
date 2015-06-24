clc
//Initialization of variables
V1 = 18 //ft/s
g1 = 32.2 //ft/s^2
y1 = 0.60 //ft
b1 = 100 //ft
d = 62.4 //lb/ft^3
// Calculations
Fr1 = V1/(g1*y1)^0.5
y21 = y1*(-1 + (1+8*(Fr1)^2)^0.5)/(2) //ft
V2 = y1*V1/y21 //ft/s
Fr2 = V2/(g1*y21)^0.5 //ft 
hL = (y1+ V1^2/(2*g1)) - ( y21 + V2^2/(2*g1) ) //ft
Pd = d*b1*y1*V1*hL/550 //hp
//results 
printf("the froude numbers before and after jump are %.2f , %.3f",Fr1,Fr2)
printf("\nthe power dissipated by the viscous effects is %.f hp",Pd) 
