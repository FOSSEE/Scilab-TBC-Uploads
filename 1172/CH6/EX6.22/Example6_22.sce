clc
//Given that 
h = 6.63e-34 // plank's constant
c = 3e8 // speed of light in m/s
lambda = 5e-4 // wavelength of photon in angstrom
e_rest_mass = 0.511 // rest mass of electron in Mev/c^2
p_rest_mass = 0.511 // rest mass of electron in Mev/c^2
// sample problem 22 page No. 230
printf("\n \n\n # Problem 22 # \n")
printf("\n Standard formula used \n E_total = E_rest + E_kinetic")
k = (((h * c  / (lambda * 1.6e-23 ))  - (e_rest_mass + p_rest_mass))) /2 // calculation of Energy of each particle
printf( "\n Energy of each particle is  %f MeV.", k )    

