

clc 
//Given that
v = 2e8 // speed of moving proton in m/s
c = 3e8 // speed of light in m/s
m = 1.67e-27 // Mass of proton in Kg
h = 6.62e-34 // Plank constant
printf("Example 1.13")
lambda = h/(m*v/sqrt(1-(v/c)^2)) // Calculation of velocity of moving electron
printf("\n Wavelength of electron is %e angstrom.\n\n\n", lambda*1e10)
