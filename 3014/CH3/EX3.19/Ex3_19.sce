 clc
//given that
nu = 2e19 // initial frequency of X ray photon
h = 6.63e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
theta = 90 // scattering angle in degree
printf("Example 3.19")
d_lambda = h/(m_e*c) // calculation of wavelength shift
k = 1/nu + d_lambda/c
nu_1 = 1/k // Frequency after collision
nu_1 = floor(nu_1/1e18)*1e18 // rounding off
printf("\nFrequency after collision is %e Hz \n\n\n",nu_1)
