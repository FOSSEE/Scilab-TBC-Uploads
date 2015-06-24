//Example 14.3
//Program to determine the loss due to scattering for the fiber

clear;
clc ;
close ;

//Given data
Vsc=6.14*10^(-9);              //V - OPTICAL OUTPUT POWER
Vopt=153.38*10^(-6);           //V - OPTICAL POWER WITHOUT SCATTERING
l=2.92;                        //cm - LENGTH OF THE FIBER

//Loss due to scattering for the fiber
alpha_sc=4.343*10^5/l*Vsc/Vopt;

//Displaying the Result in Command Window
printf("\n\n\t Loss due to scattering for the fiber is %0.1f dB/km.",alpha_sc);