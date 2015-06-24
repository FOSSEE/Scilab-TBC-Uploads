//Example 11.1
//Program to determine the Voltage required for a phase change of 
//pi radians

clear;
clc ;
close ;

//Given data
L=2*10^-2;            //metres - LENGTH OF THE WAVEGUIDE
Lambda=1.3*10^-6;     //metres - WAVELENGTH
d=25*10^-6;           //metres - DISTANCE BETWEEN THE ELECTRODES
r=30.8*10^-12;        //m/V    - ELECTRO-OPTIC COEFFICIENT
n1=2.1;               //REFRACTIVE INDEX AT 1.3um WAVELENGTH

//Calculation of the Voltage required for a phase change of pi radians
V_pi=(Lambda*d)/((n1^3)*r*L);

//Displaying the Result in Command Window
printf("\n\n\t Voltage required for a phase change of pi radians is %0.1f V.",V_pi);