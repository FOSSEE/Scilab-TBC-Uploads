// Scilab code Exa6.3 : : Page-241 (2011)
clc; clear;
m_0 = 9.10963e-031;         // Rest mass of the electron, Kg
e = 1.60218e-019;           // Charge of the electron, C
c = 2.9979e+08;            // Velocity of the light, metre per sec
BR = 3381e-006;     // Field-radius product, tesla-m
E_k = 37.44;    // Binding energy of k-electron
v = 1/sqrt((m_0/(BR*e))^2+1/c^2); // Velocity of the converson electron, m/s
E = m_0*c^2*(1/sqrt(1-v^2/c^2)-1)/(e*1e+003);   // Energy of the electron, keV 
E_C = E+E_k;            // Energy of the converted gamma ray photon, KeV
printf("\nThe energy of the electron = %6.2f keV \nThe energy of the converted gamma ray photon = %6.2f keV", E, E_C);

// Result
// The energy of the electron = 624.11 keV 
// The energy of the converted gamma ray photon = 661.55 keV 
