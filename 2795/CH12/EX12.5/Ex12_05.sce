// Scilab Code Ex12.5: Page-443 (2014)
clc; clear;
c = 3.00e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
u = 931.5;    // Energy equivalent of 1 amu, MeV
m_n = 1.008665;    // Mass of a neutron, u
M_H = 1.007825;    // Mass of a proton, u
M_He = 4.002603;    // Mass of helium nucleus
M_Be = 8.005305;    // Mass of Be-8, u
B_Be = (4*m_n+4*M_H - M_Be)*u;
B_Be_2alpha = (2*M_He - M_Be)*u;
printf("\nThe binding energy of Be-8 = %4.1f MeV and is positive", B_Be);
if (B_Be_2alpha > 0) then
    printf("\nThe Be-4 is stable w.r.t. decay into two alpha particles.");
else
    printf("\nThe Be-4 is unstable w.r.t. decay into two alpha particles since the decay has binding energy of %5.3f MeV", B_Be_2alpha);     
end

// Result
// The binding energy of Be-8 = 56.5 MeV and is positive
// The Be-4 is unstable w.r.t. decay into two alpha particles since the decay has binding energy of -0.092 MeV 