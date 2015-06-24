clc 
// Given that
lambda = 1.24e-10 // wavelength of X-ray in A
x1 = 1 // coordinate on x axis of first plane
y1 = 0 // coordinate on y axis of first plane
z1 = 0 // coordinate on z axis of first plane
x2 = 1 // coordinate on x axis of second plane
y2 = 1 // coordinate on y axis of second plane
z2 = 0 // coordinate on z axis of second plane
x3 = 1 // coordinate on x axis of third plane
y3 = 1 // coordinate on y axis of third plane
z3 = 1 // coordinate on z axis of third plane
M = 74.5 // molecular weight of KCl
d = 1980 // density of KCl in kg/m^3
N = 6.023e+26 // Avogadro's No per Kg mole
// Sample Problem 20 on page no. 13.31
printf("\n # PROBLEM 20 # \n")
printf(" \n Standard formula used are D = 1/sqrt(x^2+y^2+z^2) and a^3 = n*M/(N*d)")
a = (4*M / (N*d))^(1/3)
D1 = a/sqrt(x1^2 + y1^2 + z1^2)
D2 = a/sqrt(x2^2 + y2^2 + z2^2)
D3 = a/sqrt(x3^2 + y3^2 + z3^2)
printf("\n Inter planner distances are - \n (1) in first case %f A, \n (2) in second case %f A ,\n (3) in third case %f A",D1*10^10,D2*10^10,D3*10^10)
