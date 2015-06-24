clc
//Given that
angle = %pi/2 // scattering angle of photon
h = 6.624e-34 // plank's constant
v = 2e6 // speed of particle
e = 1.6e-19 // charge on electron
m = 1e-3 // mass of particle in kg
//Sample Problem 7 Page No. 137
printf("\n\n\n # Problem 7 # \n")
printf("\n Standard formula Used \n lambda = h / (m * v)")
lambda = h / (m * v) //calculation of de Broglie wavelength of particle
printf("\n de Broglie wavelength of particle is %e  m.", lambda)
printf("\n Here the de Broglie wavelength is too small to be detected. This wavelength is far smaller than the wavelength of X ray.\n Hence diffraction experiment with such a stream of particle will not be successful.")

