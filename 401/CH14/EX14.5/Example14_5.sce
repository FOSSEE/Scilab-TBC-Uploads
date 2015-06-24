//Example 14.5
//Program to calculate the Numerical Aperture(NA) of the fiber

clear;
clc ;
close ;

//Given data
D=10;                 //cm - SCREEN POSITION
A=6.2;                //cm - OUTPUT PATTERN SIZE

// Numerical Aperture(NA) of the fiber
NA=A/sqrt(A^2+4*D^2);

//Displaying The Results in Command Window
printf("\n\n\t  The Numerical Aperture(NA) of the fiber is %0.2f .",NA);