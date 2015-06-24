// Scilab code Ex11.13: Pg.503-504 (2008)
clc; clear;

// For alpha decay
M_P = 233.040805;    // Atomic mass of Parent nucleus, u
M_D = 229.032085;    // Atomic mass of daughter nucleus, u
m_alpha = 4.002603;    //  Mass of alpha particle, u
// For simplicity assume velocity of light be unity
c = 1;    // Velocity of light, m/s
Q = (M_P - (M_D + m_alpha))*931.5;    // Maximum decay energy, MeV/c^2
if(Q>0)
    printf("\nAlpha decay is allowed")
else
    printf("\nAlpha decay is not allowed")
    end,
// For beta- decay
M_D = 233.042963;    // Atomic mass of daughter nucleus, u
Q = (M_P - M_D)*931.5;    // Maximum decayenergy, MeV/c^2
if(Q>0)
    printf("\nBeta -ve decay is allowed")
else
    printf("\nBeta -ve decay is not allowed")
    end,

// For beta+ decay
m_e = 5.4858e-04;    //  Mass of electron, u
M_P = 233.040805;
M_D = 233.039630;
Q = (M_P - (M_D + 2*m_e))*931.5;    // Maximum decay energy, MeV/c^2
if(Q>0)
    printf("\nBeta +ve decay is allowed")
else
    printf("\nBeta +ve decay is not allowed")
    end,

// For electron capture
Q = (M_P - M_D)*931.5;    
if(Q>0)
    printf("\nElectron capture is allowed")
else
    printf("\nElectron capture is not allowed")
 end
 
// Result
// Alpha decay is allowed
// Beta -ve decay is not allowed
// Beta +ve decay is allowed
// Electron capture is allowed 