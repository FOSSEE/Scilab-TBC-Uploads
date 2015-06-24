// Scilab code Ex6.12: Pg 218 (2008)
clc; clear;
Im1 = 7;    // Current amplitude of reference waveform I1, A
Im2 = 6;    // Current amplitude of reference waveform I2, A
Im3 = 5;    // Current amplitude of reference waveform I3, A
Im4 = 4;    // Current amplitude of reference waveform I4, A
phi1 = 70*%pi/180;   // Phase angle for reference waveform I1, rad
phi2 = 0*%pi/180;   // Phase angle for reference waveform I2, rad
phi3 = -50*%pi/180;   // Phase angle for reference waveform I3, rad
phi4 = -90*%pi/180;   // Phase angle for reference waveform I4, rad
printf("\ni1 = %dsin(wt + %4.2f) amp", Im1, phi1);
printf("\ni2 = %dsin wt amp", Im2);
printf("\ni3 = %dsin(wt + %4.2f) amp", Im3, phi3);
printf("\ni4 = %dsin(wt + %4.2f) amp", Im4, phi4);

// Result
// i1 = 7sin(wt + 1.22) amp
// i2 = 6sin wt amp
// i3 = 5sin(wt + -0.87) amp
// i4 = 4sin(wt + -1.57) amp 
