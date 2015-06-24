clc 
// Given that
fringe_width = 3.42e-4 // fringe width in meter
mu = 1.542 // refractive index of glass
Xn = 2.143e-3 // shift of central fringe in meter
lambda = 5.89e-7 // wavelength of light in meter
// Sample Problem 13 on page no. 1.44
printf("\n # PROBLEM 13 # \n")
n = Xn / fringe_width // calculation for order of the fringe
t = (floor(n) * lambda) / (mu - 1) // calculation for thickness of the glass
printf("\n Standard formula used \n (mu - 1)*t = n*lambda \n")
printf("\n Thickness of glass sheet = %e meter. ",t)
