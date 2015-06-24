// Scilab Code Ex12.16: : Page-461 (2014)
clc; clear;
function [] = check_allowance(Q, decay_type)
    if (Q < 0) then
    printf("\nThe %s is not allowed for Ac-226", decay_type);
else
    printf("\nThe %s is allowed for Ac-226", decay_type);
end
endfunction
u = 931.5;    // Energy equivalent of 1 u, MeV
M_Ac226 = 226.026090;    // Atomic mass of Ac-226, u
M_Fr222 = 222.017544;    // Atomic mass of Fr-222, u
M_He4 = 4.002603;    // Atomic mass of He-4, u
M_Th226 = 226.024891;    // Atomic mass of M_Th226, u
M_Ra226 = 226.025403;    // Atomic mass of M_Ra226, u
m_e = 0.000549;    // Mass of the electron, u
// Alpha Decay
Q = (M_Ac226 - M_Fr222 - M_He4)*u;    // Q-value of the reaction undergoing alpha decay, MeV
check_allowance(Q, "alpha decay");
// Beta- Decay
Q = (M_Ac226 - M_Th226)*u;    // Q-value of the reaction undergoing beta- decay, MeV
check_allowance(Q, "beta- decay");
// Beta+ Decay
Q = (M_Ac226 - M_Ra226 - 2*m_e)*u;    // Q-value of the reaction undergoing beta+ decay, MeV
check_allowance(Q, "beta+ decay");
// Electron Capture
Q = (M_Ac226 - M_Ra226)*u;    // Q-value of the reaction undergoing electron capture, MeV
check_allowance(Q, "electron capture");

// Result
// The alpha decay is allowed for Ac-226
// The beta- decay is allowed for Ac-226
// The beta+ decay is not allowed for Ac-226
// The electron capture is allowed for Ac-226 