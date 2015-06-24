clc 
// Given that
d = 4e-4 // separation between slits in meter
b = 2e-4 // slit-width in meter
fringe_width = 2.5e-3 // fringe width in meter
D = 1.6 // distance between screen and slits
// Sample Problem 24 on page no. 2.47
printf("\n # PROBLEM 24 # \n")
lambda = (fringe_width * d) / D // calculation for wavelength of light
r = (b + d) / b // calculation for ratio of n with m
m1 = 1
n1 = r * m1 // calculation for missing order
m2 = 2
n2 = r * m2 // calculation for missing order
m3 = 3
n3 = r * m3 // calculation for missing order
printf("\n Standard formula used \n lambda = (fringe_width * d) / D. \n r = (b + d) / b. \n n = r * m. \n")
printf("\n Wavelength of light = %e meter. \n Missing order = %d,%d,%d....",lambda,n1,n2,n3)
