//Example 3.2
//Program to Determine Theoretical attenuation in dB/km due to fundamental rayleigh scattering at optical wavelengths:
//(a)0.63um
//(b)1.00um
//(c)1.30um

clear;
clc ;
close ;

//Given data
n=1.46;             //REFRACTIVE INDEX
p=0.286;            //PHOTOELASTIC COEFFICIENT
Bc=7*10^(-11);      //m^2/N - ISOTHERMAL COMPRESSIBILITY
K=1.381*10^(-23);   //J/K - BOLTZMANN's CONSTANT
Tf=1400;            //Kelvin - FICTIVE TEMPERATURE
l=1000;             //metre - FIBER LENGTH

//(a)Attenuation in dB/km due to fundamental rayleigh scattering at 0.63um
lambda=0.63*10^(-6);             //metre - WAVELENGTH
Gamma_R=8*(%pi)^3*n^8*p^2*Bc*K*Tf/(3*lambda^4);
L_km1=exp(-Gamma_R*l)
A1=10*log10(1/L_km1);

//(b)Attenuation in dB/km due to fundamental rayleigh scattering at 1.00um
lambda=1.00*10^(-6);             //metre - WAVELENGTH
Gamma_R=8*(%pi)^3*n^8*p^2*Bc*K*Tf/(3*lambda^4);
L_km2=exp(-Gamma_R*l)
A2=10*log10(1/L_km2);

//(c)Attenuation in dB/km due to fundamental rayleigh scattering at 1.30um
lambda=1.30*10^(-6);             //metre - WAVELENGTH
Gamma_R=8*(%pi)^3*n^8*p^2*Bc*K*Tf/(3*lambda^4);
L_km3=exp(-Gamma_R*l)
A3=10*log10(1/L_km3);

//Displaying the Results in Command Window
printf("\n\n\t (a)Attenuation in dB/km due to fundamental rayleigh scattering at 0.63um = %0.1f dB/km.",A1);
printf("\n\n\t (b)Attenuation in dB/km due to fundamental rayleigh scattering at 1.00um = %0.1f dB/km.",A2);
printf("\n\n\t (c)Attenuation in dB/km due to fundamental rayleigh scattering at 1.30um = %0.1f dB/km.",A3);