clc
// Intialization of variables
D = 1.94 // slugs/ft^3
Q = 300/(7.48*60) // ft^3/s
d1 = 3.5/12 //ft
d2 = 1/12 //ft^2
A1 = %pi*(d1/2)^2
A2 = %pi*(d2/2)^2
// Calculations
M = D*Q//slugs/s
V1 = Q/A1 //ft/s
V2 = Q/A2 //ft/s
Wsh = M*(3000 + (60*144/(1.94) )- (18*144/(1.94) )+ ((V2^2 - V1^2)/2) )/(550) // hp
// results
printf("Power required by the pump is %.1f hp ",Wsh)
