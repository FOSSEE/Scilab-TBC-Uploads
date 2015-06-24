clc
//Given that
theta = 90 // angle of scattered photon in degree
E_rest = 938.3 // rest mass energy of a proton in MeV
E = 12// energy of scattered proton in Mev
c = 3e8 // speed of light in m/s
h = 6.63e-34 // plank's constant
//Sample Problem 20 page No. 145
printf("\n\n\n # Problem 20 # \n")
printf("\n Standard formula Used \n delta_lambda = h * (1 - cos (theta )) / ( m_e * c)")
lambda = h * c / ( E * 1.6e-13) //calculation of incident wavelength
lambda1 = lambda + h * c / (E_rest * 1.6e-13)    //calculation of wavelength of scattered photon
printf ("\n wavelength of scattered photon is  %e Angstrom. ", lambda1 * 1e10)


