//clc();
clear;
// To determine the thickness of the glass plate
mew=1.56;          //refractive index of the glass plate
lambda=5000*10^(-8);       //wavelength of the light in centimetres
n=16;
t=(n*lambda)/(mew-1);
printf("thickness of the glass plate in centimetres when 16 fringes are displaced is %f cm",t);
