//clc();
clear;
//To determine the angular seperation
lambda=600*10^(-9);           //wavelength of light in metres
a=1*10^(-6);                  //slit width in metres
n=1;
theta=asind((n*lambda)/a);
printf("the angular seperation between the first order minima and central maxima of either side is %f degrees",theta);
