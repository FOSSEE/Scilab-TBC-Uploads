clc();
clear;
//To determine the wavelength of light incident on a quartz plate
delta=50;                                                             //phase difference
mewE=1.544;                                                          //refractive index of extraordinary waves
mew0=1.553;                                                          //refractive index of ordinary waves
t=8;                                                                 //thickness in nm
lambda=((2*180)/delta)*(mew0-mewE)*t*10^-6*10^9                     //mew0>mewE
printf("The wavelength of light incident is %f nm",lambda);