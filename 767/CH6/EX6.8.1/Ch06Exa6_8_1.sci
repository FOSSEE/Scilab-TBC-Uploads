// Scilab code Exa6.8.1. : To calculate the energy gained per turn of an electron present in given magnetic field. Page 273(2011)
e = 1.6e-019 ; // Charge of an electron, C
f = 60; // Frequency of variation magnetic field, Hz
B_0 = 1; // Magnetic field , tesla
r_0 = 1; // Radius of doughnut, m
E = 4*e*2*%pi*f*r_0^2/(1.6e-019); // Energy gained by electron per turn, eV
E_g = round(E)
printf("\n Energy gained by electron per turn:  %d eV", E_g)
// Result
//      Energy gained by electron per turn:  1508 eV 