// Scilab code Exa11.13 : : Page-539 (2011)
clc; clear;
E_c = 30e+009;        // Energy of the proton accelerator, GeV
m_0_c_sq = 0.938*10^6;        // Relativistic energy, GeV
E_p = (4*E_c^2-2*m_0_c_sq^2)/(2*m_0_c_sq) ;    // Energy of the proton, GeV
printf("\nThe energy of the proton = %5.2e GeV", E_p/1e+009);
 
// Result
// The energy of the proton = 1.92e+006 GeV 
// Wrong answer given in the textbook