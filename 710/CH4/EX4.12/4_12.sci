clc();
clear;
//To determine the wavelength of light used
m=8;                                           //eigth ring
n=3;                                           //third ring
dm=0.4;                                        //diameter of the eigth ring
dn=0.2;                                        //diameter of the third ring
R=101;                                         //Radius of curvature
lambda=(((dm^2)-(dn^2))/(4*R*(m-n)))*10^5      //wavelength of light 
printf("The wavelength of light used is %fcm",lambda)