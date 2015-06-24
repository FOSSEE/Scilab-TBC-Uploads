clc;
close();
clear();
//page no 453
//prob no. 13.6
N=6;   //bits per word
M=2^N;
mprintf(' M=%i  \n',M);
Pr=200*10^-15;   //W
R=2*10^6;   //bits/s
Eb=Pr/R;
mprintf(' Bit energy ,Eb=%.0f*10^-21  \n',Eb*10^21);
k=1.38*10^-23;   //Boltzmann cons
Ti=300;  //K
Te=425;  //K
Tsys=Ti+Te;
nsys=k*Tsys;                 
mprintf('  Noise power spectral density ,nsys=%.0f*10^-20 W/Hz \n',nsys*10^20);
rho=Eb/nsys;
mprintf(' Bit energy , rho=%.0f  \n',rho);
rhodB=10*log10(rho);
mprintf(' Bit energy in db, rho,dB=%.0f dB \n',rhodB);
//part a
Pe=4*10^-6;
SNout=1.5*M^2/(1+4*M^2*Pe);
mprintf(' \n(a) (S/N)output=%.0f (or %0.2f  dB) \n',SNout,10*log10(SNout));
//part b
Pe=2.3*10^-5;
SNout=1.5*M^2/(1+4*M^2*Pe);
mprintf(' \n(b) (S/N)output=%.0f (or %0.2f  dB) \n',SNout,10*log10(SNout));
//part c
Pe=8*10^-4;
SNout=1.5*M^2/(1+4*M^2*Pe);
mprintf(' \n(c) (S/N)output=%.1f (or %0.2f  dB) \n',SNout,10*log10(SNout));
//part d
Pe=3.5*10^-3;
SNout=1.5*M^2/(1+4*M^2*Pe);
mprintf(' \n(d) (S/N)output=%.1f (or %0.2f  dB) \n',SNout,10*log10(SNout));

