//Example No. 6.10.1
clc;
clear;
close;
format('v',6);
n=10;//no. of elements
//d=lambda/4;(spacing)
dBYlambda=1/4;///(Spacing/wavelength)
//Broadside array
D=2*n*dBYlambda;//unitless(Directivity)
D=10*log10(D);//dB(Directivity)
disp(D,"Directivity for broadside array in dB : ");
//Endfire array
D=4*n*dBYlambda;//unitless(Directivity)
D=10*log10(D);//dB(Directivity)
disp(D,"Directivity for Ordinary endfire array in dB : ");
