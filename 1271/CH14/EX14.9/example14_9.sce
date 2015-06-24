clc 
// Given that
lambda = 4.35e-7 // wavelength of light in meter
lambda_ = 5.42e-7 // threshold wavelength of photoelectron in meter
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of an electron in kg 
// Sample Problem 9 on page no. 14.22
printf("\n # PROBLEM 9 # \n")
printf("Standard formula used \n ")
printf(" 1/2 m*v^2 = eV \n  E = h*c/lambda \n")
w = ((h * c) / lambda_)
v = sqrt(((2 * h * c) / m) * (1 / lambda - 1 / lambda_))
V = m * v^2 / (2 * e)
printf("\n Work function is %e J.\n Stopping potential is %f V.\n Maximum velocity is %e m/sec.",w,V,v)
                                                               
