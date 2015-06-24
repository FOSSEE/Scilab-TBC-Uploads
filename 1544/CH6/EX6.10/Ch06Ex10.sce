// Scilab code Ex6.10: Pg 215 (2008)
clc; clear;
// The general expression for alternating current is I = Io*sin(2*%pi*f*t + phi)
f = poly(0, 'f');   // Declare the variable for frequency
f = roots(2*%pi*f - 80*%pi);    // Frequency of alternating current, Hz

// I2 is the reference waveform with zero phase angle, so that
phi2 = 0;   // Phase angle for reference waveform I2, degrees
Im2 = 3;    // Current amplitude of reference waveform I2, A
Im1 = 5;    // Current amplitude of reference waveform I1, A
Im3 = 6;    // Current amplitude of reference waveform I3, A
phi1 = %pi/6*(180/%pi); // Phase angle for reference waveform I1, degrees
phi3 = %pi/4*(180/%pi); // Phase angle for reference waveform I3, degrees

printf("\nThe frequency of all three waveforms = %2d Hz", f);
printf("\nI1 leads I2 by = %2.0f degrees", phi1-phi2);
printf("\nI3 lags I2 by = %2d degrees", phi3-phi2);
printf("\nCurrent amplitude of reference waveform I1 = %1d A", Im1);
printf("\nCurrent amplitude of reference waveform I2 = %1d A", Im2);
printf("\nCurrent amplitude of reference waveform I3 = %1d A", Im3);

// Result
// The frequency of all three waveforms = 40 Hz
// I1 leads I2 by = 30 degrees
// I3 lags I2 by = 45 degrees
// Current amplitude of reference waveform I1 = 5 A
// Current amplitude of reference waveform I2 = 3 A
// Current amplitude of reference waveform I3 = 6 A 
