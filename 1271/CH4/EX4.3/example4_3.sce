clc 
// Given that
l = 6e-2 // length of laser in meter
D = 1e-2 // diameter of laser in meter
lambda = 6.944e-7 // wavelength of light in meter
d = 3700 // density of aluminium oxide in kg/meter cube
Na = 6e+23 // Avogadro number
M = 0.102 // molar mass of aluminium oxide in kg/meter cube
h = 4.1e-15 // Planck constant in eV-sec
c = 3e+8 // speed of light in meter/sec
// Sample Problem 3 on page no. 4.25
printf("\n # PROBLEM 3 # \n")
v = (%pi * (D^2) * l) / 4 // calculation for volume 
N = (2 * Na * d * v) / M // calculation for no. of aluminium ions
N_ = N / 3500 // calculation for the no. of chromium ions
E = (h * c) / lambda // calculation for the energy of stimulated emission photon 
Et = N_ * E * (1.6e-19) // calculation for total energy
printf("\n Standard formula used \n v = (pi * (D^2) * l) / 4. \n N = (2 * Na * d * v) / M. \n N_ = N / 3500. \n E = (h * c) / lambda. \n Et = N_ * E * (1.6e-19). \n")
printf("\n Total energy = %f J",ceil(Et))
