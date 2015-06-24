clc
//Initialization of variables
U = 15 //ft/s
b = 96 //ft
c = 7.5 //ft
W = 210 //lb
CD = 0.046
n = 0.8
d = 2.38*(10^-3) //slugs/ft^3
// Calculations
A = b*c // ft^2
CL = 2*W/(d*(U^2)*A)
P = d*A*CD*(U^3)/(2*n*550)
// Results
printf(" the lift co efficient CL is %.2f",CL)
printf("\nthe power required by the pilot is %.3f hp",P)
