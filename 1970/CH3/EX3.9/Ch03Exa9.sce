// Scilab code Exa3.9 : : Page-125(2011)
clc; clear;
E_g = 2.19*1.6e-013; // Energy of the gamma rays, joule
m_e = 9.10939e-031; // Mass of the electron, Kg
C = 3e+08; // Velocity of light, m/s
E_max = [E_g/(1+(m_e*C^2)/(2*E_g))]/(1.6e-013); // Energy of the compton recoil electron, MeV
printf("\nThe energy of the compton recoil electrons = %5.3f MeV", E_max); 

// Result 
// The energy of the compton recoil electrons = 1.961 MeV
