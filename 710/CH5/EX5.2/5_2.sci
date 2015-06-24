clc();
clear;
//To determine the width of a central band
D=0.95;                          //distance of the screen from the slit
lambda=589*10^-9;                //wavelength in m
d=0.5*10^-3;                     //width of the slit
y=((2*D*lambda)/d)*10^3          //width of a central band
printf("The width of the central band is %f mm",y);