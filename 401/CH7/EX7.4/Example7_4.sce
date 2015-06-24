//Example 7.4
//Program to estimate the optical power coupled into the fiber

clear;
clc ;
close ;

//Given data
d=50*10^(-4);           //cm - EMISSION AREA DIAMETER
R_D=30;                 //W/sr/cm^2
NA=0.15;                //NUMERICAL APERTURE
r=0.01;                 //REFLECTION COEFFICIENT

//Optical power coupled into the fiber
a=d/2;                       //RADIUS
A=%pi*a^2;                   //EMISSION AREA
Pc=%pi*(1-r)*A*R_D*NA^2;

//Displaying the Result in Command Window
printf("\n\n\t Optical power coupled into the fiber is %0.1f uW.",Pc/10^(-6));