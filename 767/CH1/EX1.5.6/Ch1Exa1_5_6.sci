// Scilab code Exa1.5.6 : To calculate binding energy per nucleon of He-4 nucleus : Page 38 (2011)
m_p = 1.007825; // Mass of proton, amu
m_n = 1.008665; // Mass of neutron, amu
m_He = 4.002634; // Mass of He-4 nucleus, amu
amu = 931.47; // Atomic mass unit, MeV
A = 4, // Mass number of He-4 nucleus
BE = [2*m_p+2*m_n-m_He]*amu; // Binding energy of He-4 nucleus, MeV
Av_BE = BE/A; // Average binding energy or binding energy per nucleon, MeV
printf("\nThe binding energy per nucleon : %4.2f MeV", Av_BE);

// Result
// The binding energy per nucleon of He-4 is        
// The binding energy per nucleon : 7.07 MeV