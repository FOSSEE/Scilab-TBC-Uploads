clc 
//Given that
E = 10 // Energy of electron in KeV
m_e = 9.1e-31 // Mass of electron in Kg
h = 6.63e-34 // Plank constant
printf("Example 1.10")
v = sqrt(2*E*1.6e-16/m_e) // Calculation of velocity of moving electron
p = m_e*v //Calculation of momentum of moving electron
lambda = h/p // calculation of de Broglie wavelength
printf("\n velocity of electron is %0.2e m/s.",v)
printf("\n momentum of electron is %.3e Kgm/s.",p)
printf("\n de Broglie wavelength of electron is %.2f angstrom.\n\n\n", lambda*1e10)
 // Answers in book are v = 5.93e6 m/s, p = 5.397e-24 kgm/s, lambda = 1.23 angstrom
// Which is due to wrong calculation
