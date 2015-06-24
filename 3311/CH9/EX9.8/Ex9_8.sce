// chapter 9
// example 9.8
// Compute Total rms output voltage, fundamental output voltage, DF and HF and gain of the invertor
// page-572
clear;
clc;
// given
Edc=240; // in V (battery voltage)
M=0.8; // modulation index
// calculate
E0_rms=Edc; // calculation of rms output voltage
E0_fund=M*Edc/sqrt(2); // calculation of Fundamental output voltage
DF=M/sqrt(2); // calculation of distortion factor
HF=sqrt(2/M^2-1); // calculation of harmonic factor
G=M/sqrt(2); // calculation of gain of the invertor

printf("\nThe rms output voltage is \t\t E0_rms=%.f V",E0_rms);
printf("\nThe Fundamental output voltage is \t E0_fund=%.f V",E0_fund);
printf("\nThe distortion factor is \t\t DF=%.4f ",DF);
printf("\nThe harmonic factor is \t\t\t HF=%.3f ",HF);
printf("\nThe gain of the invertor is \t\t G=%.4f ",G);
// Note: The answer varies slightly due to precise calculation