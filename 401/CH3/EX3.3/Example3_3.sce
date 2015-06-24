//Example 3.3
//Program to compare the threshold optical powers for stimulated 
//Brillouin and Raman Scattering

clear;
clc ;
close ;

//Given data
alpha_dB=0.5;       //dB/km - ATTENUATION
lambda=1.3;         //micrometre - OPERATING WAVELENGTH
d=6;                //micrometre - FIBER CORE DIAMETER
nu=0.6;             //GHz    - LASER SOURCE BANDWIDTH    

//Threshold optical power for SBS
Pb=4.4*10^(-3)*(d^2)*(lambda^2)*alpha_dB*nu;

//Threshold optical power for SRS
Pr=5.9*10^(-2)*d^2*lambda*alpha_dB;

//Displaying the Results in Command Window
printf("\n\n\t The threshold optical power for SBS is %0.1f mW.",Pb*10^3);
printf("\n\n\t The threshold optical power for SRS is %0.2f W.",Pr);