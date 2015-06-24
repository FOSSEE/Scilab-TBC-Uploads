// Scilab code Exa5.7.2: To calculate the  wavelength of the scattered gamma rays: P.no. 233 (2011)
h = 6.626e-034; // Value of Planck's constant, J
m_e = 9.11e-031; // Mass of the electron,Kg
c = 3e-04; // Velocity of light, m/s
A = 135; // Angle between scattered radiation and incident radiation, degree
W_i = 1.87; // Wavelength of incident radiation, pm
W_s = W_i + [h*(1-cosd(A))]/(m_e*c); // Wavelength of scattered radiation, pm
printf("\nWavelength of scattered radiation   : %4.2f pm",W_s )
// Result
//       Wavelength of scattered radiation   : 6.01 pm 