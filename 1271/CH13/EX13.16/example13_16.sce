clc 
// Given that
lambda = 1.4 // wavelength of x-ray in angstrom
x1 = 1 // coordinate on x axis of plane
y1 = 1 // coordinate on y axis of plane
z1 = 1 // coordinate on z axis of plane
a = 5 // lattice parameter of of crystal in angstrom
// Sample Problem 16 on page no. 13.30
printf("\n # PROBLEM 16 # \n")
printf(" Standard formula used \n")
printf(" d = a / (x1^2 + y1^2 + z1^2)^1/2 \n")
n = 1 // for first order
d = a / sqrt(x1^2 + y1^2 + z1^2)
theta = asind((n * lambda) / (2 * d))
printf("\n Angle of incidence of x-ray on the plane is %f degree.",theta)
                                                               
