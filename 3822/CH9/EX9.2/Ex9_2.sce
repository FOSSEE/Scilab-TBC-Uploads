
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 9.2
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
L1=1.5;//length of optical fiber in Km
L2=0.002;//length of fiber cutback in Km
Pn=50.1;//output power in microwatts for the full link length
Pf=385.4;//output power in microwatts for fiber cutback

a=10/(L1-L2);
b=log10(Pf/Pn);
alphadB=a*b;//attenuation per Kilometer in dB/km at wavelength 1.1um
mprintf("The attenuation per Kilometer at wavelength 1.1um is=%.2f dB/Km",alphadB);
