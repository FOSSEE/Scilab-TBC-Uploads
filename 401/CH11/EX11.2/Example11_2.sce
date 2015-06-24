//Example 11.2
//Program to determine Corrugation Period and Filter's 3dB Bandwidth

clear;
clc ;
close ;

//Given data
L=1*10^-2;            //metres - LENGTH OF THE DEVICE
Lambda_B=1.52*10^-6;  //metres - CENTRE WAVELENGTH
Theeta=1;             //Degree - INCIDENT ANGLE
n1=3.1;               //REFRACTIVE INDEX of InGaAsP

//Calculation of Effective Refractive Index of the Waveguide
ne=n1*sin(2*Theeta*%pi/180);

//Calculation of the Corrugation Period
D=(Lambda_B)/(2*ne);

//Calculation of the Filter's 3dB Bandwidth
delta_Lambda=(D*Lambda_B)/L;

//Displaying the Results in Command Window
printf("\n\n\t Corrugation Period of the First Order Grating is %0.1f um.",D/10^-6);
printf("\n\n\t Filters 3dB Bandwidth is %0.1f Armstrong.",delta_Lambda/10^-10);