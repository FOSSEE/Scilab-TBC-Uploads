clc 
// Given that
lambda = 5e-7 // wavelength of light in meter
mu_o = 1.5442 // refractive index for ordinary light
mu_e = 1.5533 // refractive index for extraordinary light 

// Sample Problem 16 on page no. 218
printf("\n # PROBLEM 16 # \n")
t1 = lambda/(2*(mu_e - mu_o))
t3 = 3*t1
t5 = 5*t1
// calculation for thickness of plate of quartz
printf("\n Standard formula used \n t = lambda / (4 * (mu_o - mu_e)) ")
printf("\n Thickness of plate of calcite is \n %e meter,\n %e meter, \n %e meter and so on .....",t1,t3,t5)

