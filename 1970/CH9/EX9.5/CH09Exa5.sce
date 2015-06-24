// Scilab code Exa9.5 : : Page-391 (2011)
clc; clear;
m_40 = 39.962589;         // Mass of calcium 40, atomic mass unit
m_41 = 40.962275;         // Mass of calcium 41, atomic mass unit
m_39 = 38.970691;          // Mass of calcium 39, atomic mass unit 
m_n = 1.008665;            // Mass of the neutron, atomic mass unit
BE_1d = (m_39+m_n-m_40)*931.5;        // Binding energy of 1d 3/2 neutron, mega electron volts
BE_1f = (m_40+m_n-m_41)*931.5;        // Binding energy of 1f 7/2 neutron, mega electron volts
delta = BE_1d-BE_1f;        // Energy difference between neutron shells, mega electron volts
printf("\nThe energy difference between neutron shells = %4.2f MeV", delta);

// Result
// The energy difference between neutron shells = 7.25 MeV 