//Example 2.7
//Program to estimate the maximum core diameter of an optical fiber 
//which allows single mode operation

clear;
clc ;
close ;

//Given data
alpha=2;                //Parabolic Profile
lambda=1.3*10^(-6);     //metre - OPERATING WAVELENGTH
n1=1.5;                 //CORE REFRACTIVE INDEX 
delta=0.01;             //RELATIVE REFRACTIVE INDEX DIFFERENCE

//Normalized Frequency for single mode operation
V=2.4*sqrt(1+2/alpha);

//The maximum core radius for single mode operation
a=V*lambda/(2*%pi*n1*sqrt(2*delta));

//Displaying the Results in Command Window
printf("\n\n\t The maximum core diameter of the optical fiber which allows single mode operation is %0.1f micrometre.",2*a*10^6);