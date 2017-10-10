
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 91
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
L1=2;//length of fiber in m
L2=0.002;//length of fiber cutback in Km for testing
VF=2.1;//output voltage of photodetector in volts at lambda = 0.85um
lamda=0.85e-6//wavelength in m
VN=10.5;//output voltage for 2m cutback fiber length at wavelength 0.85um in volts

a=10/(L1-L2);
b=log10(VN/VF);
alphadB=a*b;//attenuation per Kilometer in dB/km at wavelength 0.85um
mprintf("The attenuation per Kilometer at wavelength 0.85um is=%.2f dB/Km",alphadB);
