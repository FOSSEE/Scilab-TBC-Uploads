//Chapter 12
//page no 509
//given
clc;
clear all;
L1=40;          //in km
L2=100;         //in km
A=0.2;      //in dB/Km
TFA1=A*L1;

printf("\n Total fibre span attenuation %0.0f dB\n",TFA1);
TFA2=A*L2;
printf("\n Total fibre span attenuation %0.0f dB\n",TFA2);
nsd=TFA2-TFA1;
printf("\n Noise spectral density = %0.0f dB ",nsd);
nsd_abs=10^(nsd/10)
printf("\n\n Absolute value of noise spectral density = %0.0f dB ",nsd_abs);
