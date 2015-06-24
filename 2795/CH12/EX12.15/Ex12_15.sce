// Scilab Code Ex12.15: Page-461 (2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 u, MeV
M_Fe55 = 54.938298;    // Atomic mass of Fe-55, u
M_Mn55 = 54.938050;    // Atomic mass of Mn-55, u
m_e = 0.000549;    // Mass of the electron, u
Q = (M_Fe55 - M_Mn55 - 2*m_e)*u;    // Q-value of the reaction undergoing beta+ decay, MeV
if (Q < 0) then
    printf("\nThe beta+ decay is not allowed for Fe-55");
else
    printf("\nThe beta+ decay is allowed for Fe-55");
end
Q = (M_Fe55 - M_Mn55)*u;    // Q-value of the reaction undergoing electron capture, MeV
if (Q < 0) then
    printf("\nFe-55 may not undergo electron capture");
else
    printf("\nFe-55 may undergo electron capture");
end

// Result
// The beta+ decay is not allowed for Fe-55
// Fe-55 may undergo electron capture 