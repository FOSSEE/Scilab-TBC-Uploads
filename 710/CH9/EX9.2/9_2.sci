clc();
clear;
//To calculate the number of photons that reach the surface of the earth per square cm per second
h=6.626*10^-34;                               //plancks constant
c=3*10^8;                                     //speed of light
lambda=550;                                   //wavelength in nm
E=(h*c)/(lambda*10^-9);                        //energy of photon in J
Es=0.1/E                                      //number of photons per square cm per second
printf("The number of photons that reach the surface of the earth per square cm per second are %e ",Es);