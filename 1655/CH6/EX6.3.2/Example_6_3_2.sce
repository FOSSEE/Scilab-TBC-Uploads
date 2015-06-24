// Example 6.3.2  page 6.12

clc;
clear;

n=1.7;      //refractive index
L=5d-2;     //distance between mirror
c=3d8;      //speed of light
lamda=0.45d-6;  //wavelength

k=2*n*L/lamda;      //computing number of modes
delf=c/(2*n*L);     //computing mode separation
delf=delf*10^-9;

printf("\nNumber of modes are %.2e.\nFrequency separation is %.2f GHz.",k,delf);

