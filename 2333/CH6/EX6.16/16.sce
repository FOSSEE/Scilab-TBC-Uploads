clc 
// Given that
l = 6 // length of fiber in kilo meter
mu1 = 1.48 // refractive index for core
NA = 0.28 // Numerical aperture
c = 3e8 // speed of light in m/sec
// Sample Problem 16 on page no. 284
printf("\n # PROBLEM 16 # \n")
t = l*1e3*(NA)^2/(2*c*mu1)
printf("\n Time taken by light pulse is %f nsec.",t*1e9)

