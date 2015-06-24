clc();
clear;
//To calculate the work function of the surface
h=6,626*10^-34;                                        //plancks constant
c=3*10^8;                                             //speed of light
lambda=350;                                          //threshold wavelength
W=((h*c)/(lambda*10^-9*1.6*10^-19))*10^-34           //work function of the surface
printf("The workfunction of the surface is %f eV",W);
