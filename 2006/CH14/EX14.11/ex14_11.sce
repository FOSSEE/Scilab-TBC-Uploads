clc;
// The Combustion of H2 with Q2 from H2O
//H2(g)+1/2 O2 (g)→H2O(l)+285830 kJ/kmol H2
T0=298; // Temperature of surroundings in kelvin
// From table 14.1 at 298 K
del_hfH2O=-285830; // Enthalpy of Heat in kJ/kmol
s_298H2O=69.94; s_298H2=130.684; s_298O2=205.142; // entropies in kJ/kmol K
GP_GR=del_hfH2O-T0*(s_298H2O-s_298H2-1/2*s_298O2); // Formation of Gibbs function
GR=0;
GP=GP_GR-GR; // Standard Gibbs function of formation of liquid H2O
disp ("kJ/kmol",GP,"Standard Gibbs function of formation of liquid H2O = ");
