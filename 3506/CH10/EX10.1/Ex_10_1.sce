//Optical Fiber communication by A selvarajan
//example 10.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
Xx=-30//crosstalk in dB
L=0.3//typical value
N=5//no. of switches Nb+Nc
SXR=Xx-L*(N)-10*log10(5*(10^(-L*N/10))/N)//Signal power to noise power in dB
mprintf('Minimum and maximum SXR values=%fdB',SXR)

