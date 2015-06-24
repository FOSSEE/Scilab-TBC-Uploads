// Scilab Code Ex9.3 Vibrational frequency and molar heat capacity of diamond: Page-312(2010)
h = 6.626e-034;    // Planck's constant, joule second
k = 1.38e-023;    // Boltzmann constant, joule/mol/kelvin
T = 10;    // Given temperature, kelvin
N = 6.023e+023;    // Avogadro's number
R = N*k;    // Universal gas constant, joule/kelvin 
theta_D = 2230;    // Debye temperature for diamond, kelvin
f_D = k*theta_D/h;    // Debye frequency of diamond, hertz
C_v = 12/5*%pi^4*R*1e+03*(T/theta_D)^3;    // Specific heat of diamond, J/kmol/kelvin
printf("\nThe highest possible vibrational frequency of diamond = %4.2e per second", f_D); 
printf("\nThe molar specific heat of diamond = %5.3f J/kmol/kelvin", C_v); 
// Result 
// The highest possible vibrational frequency of diamond = 4.64e+013 per second
// The molar specific heat of diamond = 0.175 J/kmol/kelvin