//Example 2.4
//Program to estimate 
//(a) Normalized frequency for the fiber
//(b) The Number of guided modes

clear;
clc ;
close ;

//Given data
n1=1.48;                //CORE REFRACTIVE INDEX
delta=0.015             //RELATIVE REFRACTIVE INDEX DIFFERENCE
d=80*10^(-6);           //metre - CORE DIAMETER
lambda=0.85*10^(-6);    //metre - OPERATING WAVELENGTH
a=d/2;                  //CORE RADIUS

//(a) Normalized frequency for the fiber
V=2*%pi/lambda*a*n1*sqrt(2*delta);

//(b) The Number of guided modes
Ms=(V^2)/2;

//Displaying the Results in Command Window
printf("\n\n\t The Normalized frequency for the fiber is %0.1f.",V);
printf("\n\n\t The Number of guided modes of the fiber is %d.",ceil(Ms));