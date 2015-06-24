//Example 2.5
//Program to estimate total number of guided modes propagating in the fiber

clear;
clc ;
close ;

//Given data
NA=0.2;                 //NUMERICAL APERTURE
d=50*10^(-6);           //metre - CORE DIAMETER
lambda=1*10^(-6);       //metre - OPERATING WAVELENGTH
a=d/2;                  //CORE RADIUS

//Normalized Frequency for the fiber
V=2*%pi/lambda*a*NA;

//Mode Volume for parabolic profile
M=(V^2)/4;

//Displaying the Results in Command Window
printf("\n\n\t The number of modes supported by fiber is %1.0f.",M);