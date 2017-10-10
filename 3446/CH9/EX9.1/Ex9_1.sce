// Exa 9.1
// To calculate Eb/No in dB for BPSK and Coherent FSK.

clc;
clear all;

Pe=10^-6;//Probability of error
e=2.71828; //Euler's Number

//solution
// For BPSK
//Pe(=10^-6)=e^(-x)/(2*sqrt(%pi*x)); where x=Eb/No

deff('y=f(x)','y=2.71828^(-x)/(2*sqrt(%pi*x))-10^-6');
[x,v,info]=fsolve(0.1,f);

printf('Eb/No For BPSK is %.2f dB\n ',10*log10(x));
printf('FSK requires 3 dB more in terms of Eb/N0 to give the same Pe as BPSK so it comes out to be %.2f dB',10*log10(x)+3);
