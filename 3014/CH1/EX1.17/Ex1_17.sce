clc 
//Given that
M = 20 // Mass of ball in Kg
V = 5 // velocity of of ball in m/s
m = 9.1e-31 //Mass of electron in Kg
v = 1e6 // velocity of of electron in m/s
h = 6.62e-34 // Plank constant

printf("Example 1.17")
lambda_b = h/(M*V) // calculation of de Broglie wavelength for ball
lambda_e = h/(m*v) // calculation of de Broglie wavelength electron
printf("\n de Broglie wavelength of ball is %e angstrom.",lambda_b*1e10)
printf("\n de Broglie wavelength of electron is %f angstrom.\n\n\n",lambda_e*1e10)
// answer in book is 6.62e-22 angstrom for ball

