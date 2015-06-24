
 
clc 
//Given that
mu_0 = 4*%pi*1e-7 // Permeability of free space
mu = mu_0 //Permeability of silver
sigma = 3.5e7 // conductivity in simens /m
lambda = 6328 // Wavelength in angstrom
c = 3e8// Speed of light in m/sec

printf("Example 7.13")
f = c/(lambda*1e-10)
omega = 2*%pi/f // Calculation of time period
f = c/(lambda*1e-10) // Calculation of frequency in Hz
delta = sqrt(1/(%pi*f*sigma*mu)) // Calculation of skin depth penetration
printf("\n Skin depth penetration is %f nm. \n\n\n",delta*1e9)
// Answer in book is 3.9 mm, unit used in book is wrong
