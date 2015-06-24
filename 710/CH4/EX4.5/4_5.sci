clc();
clear;
//To determine the diameter of the ninth dark ring
n=9;
lambda=589*10^-9;                   //wavelength of light used
R=0.95;                             //radius of curvature of lens
mew=1;
D=(sqrt((4*n*lambda*R)/mew))*10^2   //diameter of the ninth dark ring
printf("The diameter of the ninth dark ring is %f cm",D);