//clc();
clear;
//To determine the slit width
x=4.2*10^(-3);        //distance between central max to first max in metres
D=0.6;                 //distance between screen and slit in metres
lambda=6000*10^(-10);          //wavelength of light in metres
d=(D*lambda)/x;
printf("the slit width in a single slit diffraction pattern is %f m",d);
