clc 
// Given that
NA = 0.3 // numerical aperture of fiber
d = 200 // core diameter in micro meter
lambda = 0.9 // wavelength of propagating light in micro meter
// Sample Problem 10 on page no. 268
printf("\n # PROBLEM 10 # \n")
N_max = 2*(d/2)^2*%pi^2*NA^2/lambda^2
printf("\n Total number of propagating modes are %d.",N_max)
