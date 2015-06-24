clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
d1 = 1 // distance of wavefront recieved on the screen from the opening in first side in meter
d2 = 2 // distance of wavefront recieved on the screen from the opening in other side in meter
// Sample Problem 8 on page no. 2.40
printf("\n # PROBLEM 8 # \n")
f = (d1 * d2) / (d1 + d2)
p = 1 / f // beacause zone plate act as a convex lens
n = 1 // for first zone
Rn = sqrt(n * lambda * f) // calculation for radius of first zone
Dn = 2 * Rn // calculation for diameter of first zone
printf("\n Standard formula used \n ")
printf("\n Focal length = %f meter. \n Power = %f D. \n Diameter of first zone = %f mm. ",f,p,Dn*1000)
