// Scilab code Exa5.7.3: To calculate the  wavelength of the incident beam of X-rays : P.no. 234 (2011)
h = 6.626e-034; // Value of Planck's constant, J
m_e = 9.11e-031; // Mass of the electron,Kg
c = 3e-04; // Velocity of light, pm/s
A = 90; // Angle between scattered radiation and incident radiation, degree
W_s = 3.8; // Wavelength of scattered radiation, pm
W_i = [W_s - h/(m_e*c)*(1-cosd(A))]; // Wavelength of incident beam of Xrays, pm
printf("\nWavelength of incident beam of X-rays : %4.2f pm", W_i )
// Result
//       Wavelength of incident beam of X-rays : 1.38 pm 
