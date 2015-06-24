clc
//Initialization of variables
d = 1.94// slugs/ft^3
u = 2.04*(10^-5) // lb.s/ft^2
l = 4 //ft
b = 0.5 //ft
Cdf = 0.00308 
//Calculations
A = l*b //ft^2
Df = 1.94*(10^2)*(Cdf)
//results
printf(" the corresponding drag is %.3f lb",Df)
