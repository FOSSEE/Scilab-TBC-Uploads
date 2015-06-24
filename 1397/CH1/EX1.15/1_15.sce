//clc();
clear;
// To determine the thickness of the thinnest film
n=1;
lambda=6000*10^(-8);          //wavelength of yellow light in centimetres
mew=1.33;             //refractive index of the film
r=0;                  //angle of refraction in degrees
t=(n*lambda)/(2*mew*cosd(r)*10^(-2));
printf("thickness of the thinnest film in which destructive interference takes place is %f cm",t);
