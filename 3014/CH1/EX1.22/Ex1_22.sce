clc 
//Given that
k = 8.6e-5 // Boltzmann constant
t = 27 // Temperature in degree Celsius
h = 6.62e-34 // Plank constant
m = 6.7e-27 // Mass of helium atom
printf("Example 1.22")
lambda = h/sqrt(3*m*(k*1.6e-19)*(t+273))// Calculation of wavelength
printf("\n Wavelength of helium at %d degree Celsius is %f angstrom.\n\n\n",t,lambda*1e10)
