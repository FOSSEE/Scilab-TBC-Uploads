//Example 2.2.8 page 2.15

clc;
clear;

Tf = 1400;   //fictive temperature
BETA = 7*10^-11;
n= 1.46;       //RI 
p= 0.286;   //photo elastic constant
Kb = 1.381*10^-23;     //Boltzmann's constant
lamda = 850*10^-9;  //wavelength
alpha_scat = 8*%pi^3*n^8*p^2*Kb*Tf*BETA/(3*lamda^4);
l= 1000;    //fibre length
TL = exp(-alpha_scat*l);  //transmission loss
attenuation = 10*log10(1/TL);
printf("The attenuation is %.3f dB/Km",attenuation);
