clc 
// Given that
d1 = 4.05e-3 // distance between slits in first position in meter
d2 = 2.90e-3 // distance between slits in second position in meter
lambda = 5.893e-7 // wavelength of light in meter
D = 1 // distance between slit and screen
// Sample Problem 12 on page no. 1.44
printf("\n # PROBLEM 12 # \n")
d = sqrt(d1 * d2)// calculation for distance between fringe
fringe_width = (lambda * D) / d // calculation for fringe width
printf("\n Standard formula used \n d = sqrt(d1*d2),\n beta = lambda*D/d \n")
printf("\n Fringe width = %f mm",fringe_width*1000)
