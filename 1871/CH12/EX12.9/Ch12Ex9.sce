// Scilab code Ex12.9:Pg:478 (2008)
clc;clear;
P2 = 0.3e-006;    // Optical power level at the detector, W
dB_1 = 0.8*15;    // Connector loss, dB
dB_2 = 1.5*15;    // Fibre loss, dB
dB = dB_1 + dB_2;    // Total Loss, dB
// As dB = 10*log10(P1/P2), solving for P1
P1 = P2*10^(dB/10)/1e-003;    // Initial power level of an optical fibre, mw
printf("\nThe initial power level of an optical fibre = %4.2f mW",P1 );

// Result 
// The initial power level of an optical fibre = 0.85 mW 