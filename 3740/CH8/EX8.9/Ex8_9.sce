//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.9
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given - Case (i)
k=1.38e-23//boltzman constant
Lambda0=1e-6;//Wavelength in m
n=1.46;//Dimensionless refractive index of core
p=0.286;//photelastic coefficient
Beta=7e-11//isothermal compressibility at T_F which is fictive temperature in m^2N^-1
T_F=1400//fictive temperature in K
alpha_r=8*(%pi^3)*(n^8)*p^2*Beta*k*T_F/(3*Lambda0^4)//absorption coefficient in per Km
L=1e3//length in m
Loss=-10*log10(exp(-alpha_r*L))//loss in dB Km^-1
mprintf("\n absorption coefficient =%fx10^-4 m^-1\n Loss in dB Km^-1= %f dB Km^-1",alpha_r*1e4,Loss);//multiplication by 1e4 to just represent the answer in proper form
//The answers vary due to round off error

//given - Case (ii)
Lambda0=1550e-9;//Wavelength in m
n=1.46;//Dimensionless refractive index of core
p=0.286;//photelastic coefficient
Beta=7e-11//isothermal compressibility at T_F which is fictive temperature in m^2N^-1
T_F=1400//fictive temperature in K
alpha_r=8*(%pi^3)*(n^8)*p^2*Beta*k*T_F/(3*Lambda0^4)//absorption coefficient in per Km
L=1e3//length in m
Loss=-10*log10(exp(-alpha_r*L))//loss in dB Km^-1
mprintf("\n absorption coefficient =%fx10^-5 m^-1\n Loss in dB Km^-1= %f dB Km^-1",alpha_r*1e5,Loss);//multiplication by 1e5 to just represent the answer in proper form
//The answers vary due to round off error
