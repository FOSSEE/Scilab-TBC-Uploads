// Scilab code Exa11 : : Page 180 (2011)
E = 4e+06;        // Energy lost in the scintillator, eV
N_pe = E/10^2*0.5*0.1;        // Number of photoelectrons emitted
G = 10^6;                     // Gain
e = 1.6e-019;                 // Charge of the electron, C
Q = N_pe*G*e;                    // Charge collected at the anode of photo multiplier tube, C
printf("\nCharge collected at the anode of photo multiplier tube : %6.4e C",Q);
// Result
//  Charge collected at the anode of photo multiplier tube : 3.2000e-010 C 