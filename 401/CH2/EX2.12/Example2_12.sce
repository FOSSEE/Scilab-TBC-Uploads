//Example 2.12
//Program to determine relative refractive index difference using ESI
//technique

clear;
clc ;
close ;

//Given data
lambda_c=1.19*10^(-6);       //metre - CUTOFF WAVELENGTH
w0=5.2*10^(-6);              //metre - SPOT SIZE
n1=1.485;                    //MAXIMUM REFRACTIVE INDEX OF THE CORE

// The ESI core diameter
d_ESI=1.820*w0;

// The ESI relative index difference
delta_ESI=(0.293/n1^2)*(lambda_c/d_ESI)^2;

//Displaying the Result in Command Window
printf("\n\n\t The relative refractive index difference using ESI technique is %0.2f percent.",delta_ESI*10^2);