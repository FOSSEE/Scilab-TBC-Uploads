//clc();
clear;
// To determine the fringe width
lambda=5000*10^(-8);        //wavelength of monochromatic light in centimetres
d=0.05;          // seperation between two slits in centimetres
D=50;            // distance between slit and screen in centimetres
beeta=(lambda*D)/d;
printf("the fringe width is %f cm",beeta);
