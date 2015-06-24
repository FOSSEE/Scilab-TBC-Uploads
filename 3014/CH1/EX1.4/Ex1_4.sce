clc 
// Given that
KE = 4.55e-25 // Kinetic energy of an electron in Joule
m = 9.1e-31 // Mass of any object in Kg
h = 6.62e-34 // Plank constant
printf("Example 1.4")
v = sqrt(2*KE/m) // Calculation of velocity of moving electron
p = m*v //Calculation of momentum of moving electron
lambda = h/p // calculation of de Broglie wavelength
printf("\n velocity of electron is %e m/s.",v)
printf("\n momentum of electron is %e Kgm/s.",p)
printf("\n de Broglie wavelength of electron is %e m.\n\n\n",lambda)

