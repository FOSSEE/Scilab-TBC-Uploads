//clc();
clear;
// To determine the thickness of the mica sheet
mew=1.58;    // Refractive index of mica sheet
d=0.1;      // Seperation between slits in centimetres
x=0.2;      // Fringe shifted by a distance in centimetres
D=50;       // Distance of the screen from slits in centimetres
t=(x*d)/(D*(mew-1));
printf("The thickness of the mica sheet is %f cm",t);
