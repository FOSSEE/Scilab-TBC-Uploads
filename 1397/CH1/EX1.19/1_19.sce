//clc();
clear;
//To determine the radius of curvature of convex lens
lambda=5890*10^(-8);          //wavelength in centimetres
m=15;
n=5;
Dm=0.590;             //diameter of 15th ring in centimetres
Dn=0.336;             //diameter of 5th ring in centimetres
R=(Dm-Dn)/(4*lambda*(m-n));
printf("radius of curvature of convex lens is %f cm",R);
