// Example 4.15.9  page 4.41

clc;
clear;

RSW=0.0012;     //relative spectral width
lamda=0.85d-6;  //wavelength
L=1;        //distance in km (assumed)
M=100;      //material dispersion parameter in ps/nm/km (assumed)

sigma_lamda=RSW*lamda;
sigmaM=sigma_lamda*L*M*10^6;    //computing rms pulse broadning.
printf("\nRMS pulse broadning is %.3f ns/km.",sigmaM);
