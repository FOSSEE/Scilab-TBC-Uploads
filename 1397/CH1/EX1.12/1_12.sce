//clc();
clear;
// To determine the thickness of the glass plate
lambda=6000*10^(-8);         //wavelength of parallel beam of light in centimetres
mew=1.5;             //refractive index of glass plate
r=50;                //angle of refraction in degrees
n=1;                 //for least thickness
t=(n*lambda)/(2*mew*cosd(r));
printf("the least thickness of the glass plate in centimetres which will appear dark by reflection is %f cm",t);
