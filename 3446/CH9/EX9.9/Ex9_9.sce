// Exa 9.9
// To calculate-
// a)  The total bandwidth required,
// b)  The bandwidth efﬁciency,
// c)  The Eb/No required, and
// d)  No of carried bits per symbol.

clc;
clear all;

M=8; //number of different signal elements
Fc=250; //carrier frequency in kHz
DelF=25; //kHz
Pe=10^-6;//probability of error

//solution
TotalBW=2*M*DelF;
nb=2*log2(M)/(M+3);
//Pe=7*Q(z) and z=approx(5.08)
z=5.08;
Eb_No=(z)^2/log2(M);
bits_sym=log2(M);
printf('Total bandwidth required is %d kHz \n ',TotalBW);
printf('The bandwidth efficiency is %.4f \n ',nb);
printf('The required Eb/No is %.3f dB \n ',10*log10(Eb_No));
printf('Carried bits per symbol are %d \n ',bits_sym);
