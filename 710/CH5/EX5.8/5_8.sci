clc();
clear;
//To determine the slit width
lambda=600*10^-9;                           //wavelength
y=2*10^-3;                                 //width of the central band
D=1;                                       //distance of the screen from the slit
d=((2*D*lambda)/y)*10^3                    //slit width
printf("The slit width is %f mm",d);