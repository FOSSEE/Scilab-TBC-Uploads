
clc
//Given that
c = 3e8 // speed of light in m/s
v = c/20 // Speed of proton in m/s
m = 1.67e-27 // Mass of proton in Kg
h = 6.625e-34 // Plank constant
printf("Example 1.5")
lambda = h/(m*v) // calculation of de Broglie wavelength
printf("\n de Broglie wavelength of proton is %e m.\n\n\n",lambda)
// Answer in book is 6.645e-14m which is a calculation mistake
