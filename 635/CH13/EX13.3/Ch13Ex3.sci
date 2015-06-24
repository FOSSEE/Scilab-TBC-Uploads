// Scilab Code Ex13.3 Intrinsic concentration of charge carriers in semiconductors: Page-432 (2010)
k = 1.38e-023;    // Boltzmann constant, J/mol/K
h = 6.626e-034;    // Planck's constant, Js
eV = 1.6e-019;    // Joule equivalent of 1 eV
T = 300;    // Room temperature, kelvin
m_0 = 9.1e-031;    // Rest mass of an electron, kg
m_e = 0.12*m_0;    // Effective mass of electron, kg
m_h = 0.28*m_0;    // Effective mass of electron, kg
E_g = 0.67;    // Energy gap of Ge, eV
n_i = 2*(2*%pi*k*T/h^2)^(3/2)*(m_e*m_h)^(3/4)*exp(-E_g*eV/(2*k*T));    // Intrinsic carrier concentration of Ge, per metre cube
printf("\nThe intrinsic carrier concentration of Ge = %3.1e per metre cube", n_i); 
// Result 
// The intrinsic carrier concentration of Ge = 4.7e+018 per metre cube