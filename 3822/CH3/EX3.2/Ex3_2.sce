
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 3.2
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
n1=1.46;//refractive inde for the silica
p=0.286;//photo elastic coefficient for the silica
Bc=7e-11;//isothermal compressibility in m^2/N
lambda=1e-6;//wavelength in meters
KB=1.38e-23;//Boltzman constant in J/K
TF=1400//fictive temperature in K
u=8*(%pi^3)*KB*Bc*TF*p^2;// partial product
v=(n1)^8;//partial product
z=(lambda)^4;//partial product
taur=[(u*v)/(z*3)];//Rayleigh scattering coefficient in per Km
mprintf("\n Rayleigh scattering coefficient=%.3f*10^-4 per meter",taur*10^4);//multiplication by 1e4 to convert the unit to !0^-4 per Km
LKM=exp(-taur*1e3);//transmission loss factor of fiber per m
AdB=10*log10(1/LKM);//Attenuation in dB
mprintf("\n Attenuation in dB=%.2fdB per Km",AdB);
//the answer vary due to rounding
