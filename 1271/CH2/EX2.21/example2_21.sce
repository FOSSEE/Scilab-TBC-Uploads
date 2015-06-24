clc 
// Given that
lambda = 4.890e-7 // wavelength of light in meter
b = 5e-3 // slit-width in meter
f = 0.4 // focal-length of convex lens in meter
// Sample Problem 21 on page no. 2.46
printf("\n # PROBLEM 21 # \n")
m = 1 // for first dark fringe
x = (f * m * lambda) / b  
n = 1 // for first secondary maxima
x_ = ((2 * n + 1) * lambda * f) / (2 * b) 
delta_x = x_ - x // calculation for separation of dark band 
printf("\n Standard formula used \n x = (f * m * lambda) / b . \n delta_x = x_ - x. \n")
printf("\n Separation of dark band = %e meter.",delta_x)
