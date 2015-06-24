clc;
close();
clear();
//page no 455
//prob no. 13.7
//data from ex 13.6
M=2^6;
Pr=200*10^-15;   //W
R=8*10^6;   //bits/s    (changed)
Eb=Pr/R;

k=1.38*10^-23;   //Boltzmann cons
Ti=300;  //K
Te=425;  //K
Tsys=Ti+Te;
nsys=k*Tsys;                 
//mprintf('  Noise power spectral density ,nsys=%.0f*10^-20 W/Hz \n',nsys*10^20);
rho=Eb/nsys;
mprintf(' Bit energy , rho=%.1f  \n',rho);
rhodB=10*log10(rho);
mprintf(' Bit energy in db, rho,dB=%.2f dB \n',rhodB);

Pe=1.3*10^-2;
SNout=1.5*M^2/(1+4*M^2*Pe);
mprintf(' \n (S/N)output=%.2f (or %0.2f  dB) \n',SNout,10*log10(SNout));
