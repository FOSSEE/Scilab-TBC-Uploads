// Scilab code Exa7.7.2 : To calculate the capacitance and the amplitude of voltage pulse across the detector :Page 316 (2011)
E_r = 12; // Relative permittivity 
E_o = 8.85e-012; // Permittivity of free space
E = E_r*E_o; // Absolute dielectric constant
A = 2e-04; // Area of the detector, m^2
e = 1.602e-019; // Charge of an electron, C
d = 100e-06; // The thickness of the depletion layer, m
C = E*A/d; // The capacitance of the dielectric, F
E_p = 3.0; // Energy required to create an ion pair, eV
E_s = 5.48e+06; // Energy required to stopped ion pair, eV
n = E_s/E_p; // Number of ion-pair produced
Q = n*e; // Charge of these ion pair, C
A = Q/C*1000; // The amplitude of voltage pulse, mV
printf("\n The capacitance of dielectric   = %5.3e F  \n The amplitude of voltage pulse   = %5.3f mV  ", C, A)
// Result
//    The capacitance of dielectric   = 2.124e-010 F  
//   The amplitude of voltage pulse   = 1.378 mV 




































































