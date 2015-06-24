clc();
clear;
//To determine the minimum grating element required to observe the entire third order spectrum
n=3;
lambda=700*10^-9;              //wavelength
teta=90;
d=((n*lambda)/sin(teta))*10^6  //grating element
printf("The minimum grating element required to observe the entire third order spectrum is %f m",d);