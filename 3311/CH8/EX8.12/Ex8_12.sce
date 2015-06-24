// chapter 8
// example 8.12
// Determine the ON time of the chopper
// page-465
clear;
clc;
// given
Edc=230; // in V (dc source)
F=400; // in Hz (chopping frequency)
E0=150; // in V
// calculate
// Siince E0=alpha*Edc, therefore we get,
alpha=E0/Edc;
T=1/F;
// Since alpha=Ton/T, therefore we get,
Ton=alpha*T;
printf("\nThe ON time of chopper is \t Ton=%.4f ms",Ton*1E3);
// Note: The answer varies slightly due to precise calculation upto 6 decimal digit