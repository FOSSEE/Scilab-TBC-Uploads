// Example 4.6.1 
clc;
clear;
beta_c=8d-11;        //isothermal compressibility
n=1.46;     //refractive index
P=0.286;    //photoelastic constat
k=1.38d-23; //Boltzmnn constant
T=1500;     //temperature
L=1000;     //length
lamda=1000d-9;  //wavelength
gamma_r = 8*(3.14^3)*(P^2)*(n^8)*beta_c*k*T/(3*(lamda^4));      //computing coefficient
attenuation=%e^(-gamma_r*L);        //computing attenuation
printf("\nAttenuation due to Rayleigh scattering is %.3f.",attenuation);
