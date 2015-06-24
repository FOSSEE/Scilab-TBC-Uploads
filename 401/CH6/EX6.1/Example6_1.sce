//Example 6.1
//Program to calculate the ratio of stimulated emission rate to the
//spontaneous emission rate

clear;
clc ;
close ;

//Given data
Lambda=0.5*10^-6;     //metres - OPERATING WAVELENGTH
k=1.381*10^(-23);     //m^2 kg/s - BOLTZMANN's CONSTANT
c= 2.998*10^8;        //m/s - SPEED OF LIGHT
h=6.626*10^(-34);     //J/K - PLANK's CONSTANT
T=1000;               //Kelvin - TEMPERATURE

//Average operating frequency
f=c/Lambda;

//Stimulated Emission Rate/Spontaneous Emission Rate
Ratio=1/(exp(h*f/(k*T))-1);

//Displaying the Result in Command Window
printf("\n\n\t Stimulated Emission Rate/Spontaneous Emission Rate =  %0.1f X 10^(-13).",Ratio/10^(-13));