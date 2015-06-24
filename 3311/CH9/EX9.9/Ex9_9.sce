// chapter 9
// example 9.9
// What should be te amplitude of modulation index
// page-572
clear;
clc;
// given
Edc=120; // in V (battery voltage)
K=1/3; // transformer turn ratio
E01_rms=210; // in V (Fundamental output voltage of secondary)
// calculate
E0_fund=E01_rms*K; // calculation of Fundamental voltage component at primary of the transformer
// since E0_fund=M*Edc/sqrt(2), therefore we get
M=E0_fund*sqrt(2)/Edc; // calculation of amplitude of modulation index
printf("\nThe amplitude of modulation index is \t M=%.2f",M);
// Note: The answer varies slightly due to precise calculation