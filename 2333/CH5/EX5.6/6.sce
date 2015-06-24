clc 
// Given that
h_w = 2e-3 // half width of gain profile of laser in nm
mu = 1 // refractive index
lambda = 6328 // wavelength of light used in angstrom
// Sample Problem 6 on page no. 244
printf("\n # PROBLEM 6 # \n")
L = (lambda*1e-10)^2/(2*mu*h_w*1e-9) // Length of cavity 
printf("\n Required length of cavity is %dcm.",L*100)

