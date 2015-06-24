clc
//Initialization of variables
D = 1.94 // slugs/ft^3
A1 = 0.06 //ft^2
V1 = 10 // ft/s
// Calculations
Fax = -D*A1*(V1)^2
Faz = D*A1*(V1)^2
// Results
printf (" the force required in x direction is %.2f(1-cosT) lb",Fax)
printf ("\n the force required in z direction is %.2f(sinT) lb",Faz)
