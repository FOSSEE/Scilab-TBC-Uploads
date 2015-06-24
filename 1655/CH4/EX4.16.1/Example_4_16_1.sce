// Example 4.16.1  page 4.43

clc;
clear;

RSW=0.0012;     //relative spectral width
lamda=0.90d-6;  //wavelength
L=1;        //distance in km (assumed)
P=0.025;    //material dispersion parameter
c=3d5;      //speed of light in km/s

M=10^3*P/(c*lamda);     //computing material dispersion
sigma_lamda=RSW*lamda;
sigmaM=sigma_lamda*L*M*10^7;        //computing RMS pulse broadning
sigmaB=25*L*M*10^-3;

printf("\nMaterial dispersion parameter is %.2f ps/nm/km.\nRMS pulsr broadning when sigma_lamda is 25 is %.1f ns/km.\nRMS pulse broadning is %.1f ns/km.",M,sigmaB,sigmaM);

//answer in the book for RMS pulse broadning is 0.99 ns/km, deviation of 0.01ns/km.
