clc
//Given that
phi = 6 // work function in eV
h = 6.624e-34 // plank's constant
c = 3e8 // speed of light
e = 1.6e-19 // charge on electron
m_e = 9.1e-31
//Sample Problem 5 Page No. 137
printf("\n\n\n # Problem 5 # \n")
printf("\n Standard formula Used \n phi = h * nu")
lambda = h * c / (phi * e) * 1e10//calculation of Longest wavelength to eject electron
printf("\n Longest wavelength to eject electron is %d  Angstroms. ", lambda)

