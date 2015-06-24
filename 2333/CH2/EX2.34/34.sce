clc 
// Given that
lambda1 = 6e-5 // Wavelength of light in cm
lambda2 = 4.5e-5 // Wavelength of light in cm
dif1 = 0.125 // Difference between square of diameter of two successive rings in cm^2
mu1 = 1 // Refractive index
mu2 = 1.33 // Refractive index of inserted medium
r1 = 1 // let initial radius is unity
r2 = 2*r1 // Final radius of lens
// Sample Problem 34 on page no. 120
printf("\n # PROBLEM 34 # \n")
printf("\n Standard formula used \n D_m^2 -D_n^2 = 4*p*r*lambda\n")
dif2 = lambda2*1e-2*dif1/lambda1*1e-2  // Calculation of difference between square of diameter of two successive rings in cm for lambda2

dif3 = mu1/mu2 * dif1 // Calculation of difference between square of diameter of two successive rings in cm for mu2
dif4 = r2/r1 * dif1
printf("\n For \n 1. Wavelength = %e cm,Difference between square of diameter of two successive rings is %f cm^2 \n 2. Refractive index %f, Difference between square of diameter of two successive rings is %f cm^2 \n .",lambda1,dif2*1e4,mu2,dif3)
printf(" \n 3.On doubling the radius, Difference between square of diameter of two successive rings will be %f cm^2.",dif4)
