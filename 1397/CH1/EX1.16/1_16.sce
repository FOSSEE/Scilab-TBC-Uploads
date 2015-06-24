//clc();
clear;
// To determine the radius of curvature of plano convex lens
lambda=6000*10^(-8);        //wavelength of light in centimetres
m=18;
n=8;
Dm=0.65;           //diameter of 18th ring in centimetres
Dn=0.35;            //diameter of 8th ring in centimetres
R=(Dm^2-Dn^2)/(4*lambda*(m-n));
printf("Radius of curvature of the plano convex lens when the wavelength of light used is 6000 Armstrong is %f cm",R)
