// Example 4.6.2 
clc;
clear;
beta_c=7d-11;        //isothermal compressibility
n=1.46;     //refractive index
P=0.29;    //photoelastic constat
k=1.38d-23; //Boltzmnn constant
T=1400;     //temperature
L=1000;     //length
lamda=0.7d-6;  //wavelength
gamma_r = 8*(3.14^3)*(P^2)*(n^8)*beta_c*k*T/(3*(lamda^4));      //computing coefficient
attenuation=%e^(-gamma_r*L);        //computing attenuation
gamma_r=gamma_r*1000;
printf("\nRaleigh Scattering corfficient is %.3f * 10^-3 per meter\n",gamma_r);
printf("\nNOTE - in quetion they have asked for attenuation but in solution they have not calcualted\n");
printf("\nAttenuation due to Rayleigh scattering is %.3f",attenuation);
//answer for Raleigh Scattering corfficient in the book is given as 0.804d-3, deviation of 0.003d-3
