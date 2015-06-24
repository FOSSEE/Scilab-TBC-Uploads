clc 
// Given that
mu1 = 1.55 // refractive index for core
v_max = 2.405 // Maximum cut off number
d = 10 // core diameter in micro meter
lambda = 1.8 // wavelength of propagating light in micro meter
// Sample Problem 8 on page no. 266
printf("\n # PROBLEM 8 # \n")
NA = v_max*lambda/(%pi*d)
delta = 0.5*(NA/mu1)^2 // Normalized index difference
mu2 = mu1*(1- delta) // refractive index of cladding
theta_max = asin(NA)*180/%pi // maximum acceptance angle in degree
printf("\n Required maximum value of normalized difference is %f. \n Refractive index of cladding is %f. \n Maximum acceptance angle is %f degree.",delta,mu2,theta_max)
