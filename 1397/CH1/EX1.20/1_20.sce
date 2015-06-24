//clc();
clear;
//To determine the wavelength of the light used
R=70;          //radius of curvature of the lens in centimetres
n=10;
Dn=0.433      //diameter of 10th dark ring in centimetres
lambda=(Dn^2)/(4*R*n);
printf("the wavelength of the light used when a convex lens is exposed by a monochromatic light is %f cm",lambda);
