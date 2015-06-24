clc();
clear;
//To determine the phase difference between between O &E rays
mew0=1.544;                                                               //refractive index of ordinary waves
mewE=1.553;                                                              //refractive index of extraordinary waves
lambda=550;                                                              //wavelength in nm 
t=9;
delta=((2*180)/(lambda*(10^-9)))*(mewE-mew0)*t*(10^-6)                  //mewE>mew0
printf("The phase difference between O and E rays is %f degrees",delta);
