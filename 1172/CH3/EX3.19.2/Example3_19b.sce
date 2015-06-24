clc
//Given that
lambda1 = 1 // wavelength in Angstrom
lambda2 = 1.0243 // wavelength in Angstrom
c = 3e8 // speed of light in m/s
h = 6.63e-34 // plank's constant
//Sample Problem 19b page No. 144
printf("\n\n\n # Problem 19b # \n")
printf("\n Standard formula Used \n E= h *(nu1 – nu2)")
K = h * c * (( lambda2 - lambda1 )/ (lambda1 * lambda2 )) *(10e9 / 1.6e-19)   //calculation of Kinetic energy imparted to recoiling
printf ("\n Kinetic energy imparted to recoiling electron is %d eV.", K)
