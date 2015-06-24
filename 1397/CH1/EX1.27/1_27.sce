//clc();
clear;
//To calculate the possible order of spectra
N=5.905*10^3;          //grating lines in lines per centimetre
lambda=6000*10^(-8);      //wavelength of light in centimetres
d=1/N;
m=d/lambda;
printf("the possible order of spectra with a plane transmission grating is %f",m);
