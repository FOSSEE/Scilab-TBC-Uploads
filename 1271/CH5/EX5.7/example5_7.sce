clc 
// Given that
d = 0.05 // diameter of fiber in mm
NA = 0.22 // numerical aperture
lambda = 8.5e-4 // wavelength of light in mm
// Sample Problem 7 on page no. 5.18
printf("\n # PROBLEM 7 # \n")
Vn = (%pi * d * NA) / lambda
Mm = 0.5 * (Vn)^2
printf("\n Standard formula used \n Vn = (pi * d * NA) / lambda. \n Mm = 0.5 * (Vn)^2. \n")
printf("\n The normalized frequency = %f,\n number of guided in the core = %f",Vn,Mm)
