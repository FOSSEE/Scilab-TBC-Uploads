//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.11
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given - Case(i)
Lambda0=1e-6;//Wavelength in m
n=1.45;//Dimensionless Refractive index of the fiber
p=0.286;//Dimensionless Photoelastic coefficient of the fiber
Beta=7e-11;//Isothermal compressibility of the fiber in m^2 N^-1
Tf=1400;//Temperature in K
k=1.38e-23;//Boltzmann constant in SI Units
L=1e3;//Length of fiber in m

mprintf("\n For Lambda0 = 1um :");
AlphaR=8*((%pi)^3)/(3*(Lambda0^4))*(n^8)*(p^2)*Beta*k*Tf;//Absorption coefficient due to Rayleigh scattering in m^-1
mprintf("\n AlphaR = %.2e m^(-1)",AlphaR);

Loss=-10*log10(exp(-AlphaR*L));
mprintf("\n Loss = %.2f dB km^(-1)\n",Loss);


//given - Case(ii)
Lambda0=1.55e-6;//Wavelength in m
n=1.46;//Dimensionless Refractive index of the fiber
p=0.286;//Dimensionless Photoelastic coefficient of the fiber
Beta=7e-11;//Isothermal compressibility of the fiber in m^2 N^-1
Tf=1400;//Temperature in K
L=1e3;//Length of fiber in m

mprintf("\n For Lambda0 = 1.55um :");
AlphaR=8*((%pi)^3)/(3*(Lambda0^4))*(n^8)*(p^2)*Beta*k*Tf;//Absorption coefficient due to Rayleigh scattering in m^-1
mprintf("\n AlphaR = %.2e m^(-1)",AlphaR);//The answers vary due to round off error

Loss=-10*log10(exp(-AlphaR*L));
mprintf("\n Loss = %.2f dB km^(-1)",Loss);//The answers vary due to round off error
