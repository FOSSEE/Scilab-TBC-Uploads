//clc();
clear;
// To calculate the thickness of the glass plate
lambda=5000*10^(-8);           //wavelength of light in centimetres
n=6;                   //shift of the central range or the ratio between S and beeta
mew=1.5;               //refractive index of glass plate
t=(n*lambda)/(mew-1);
printf("the thickness of the glass plate when the central fringe is shifted to the position of 6th bright fringe is %f cm",t);
 
