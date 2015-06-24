clc();
clear;
//To determine the wavelength of light used
y=6*10^-3;                     //first minimum is observed
d=90*10^-6;                    //slit width
D=0.98;                        //distance of the screen from the slit
lambda=((y*d)/D)*10^9           // wavelength
printf("The wavelength of light used is %f nm",lambda);