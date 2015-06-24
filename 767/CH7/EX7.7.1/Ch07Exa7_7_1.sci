// Scilab code Exa7.7.1 : To calculate the thickness of depletion layer of silicon detector and amplitude of voltage pulse :P.no. 316 (2011)
E_r = 12; // Relative permittivity 
E_o = 8.85e-012; // Permittivity of free space
E = E_r*E_o; // Absolute dielectric constant
C = 100e-012; // Capacitance of the dielectric, F
A = 1.6e-04; // Area of the detector, m^2
e = 1.602e-019; // Charge of an electrin, C
E_p = 3.2; // Energy required to create an ion pair, eV
E_s = 12e+06; // Energy required to stopped ion pair, eV
n = E_s/E_p; // Number of ion-pair produced
Q = n*e; // Charge of these ion pair, C
d = A*E/(C*10^-6); // The thickness of the depletion layer, micron
A = Q/C*1000; // The amplitude of voltage pulse, mV
printf("\n The thickness of the depletion layer    = %d micron \n  The amplitude of voltage pulse:    = %6.4f mV  ", d, A)
// Result
//      The thickness of the depletion layer    = 169 micron 
//      The amplitude of voltage pulse:    = 6.0075 mV   





































































