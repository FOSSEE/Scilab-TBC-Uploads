//Example 8.6
//Program to calculate the noise equivalent power and specific 
//detectivity for the device

clear;
clc ;
close ;

//Given data
Id=8*10^(-9);           //A - DARK CURRENT
eeta=0.55;              //*100 - QUANTUM EFFICIENCY
Lambda=1.3*10^(-6);     //metre - OPERATING WAVELENGTH
A=100*50*(10^(-6))^2;   //m^2 - AREA
e=1.602*10^(-19);       //Coulumbs - CHARGE OF AN ELECTRON
h= 6.626*10^(-34);      //J/K - PLANK's CONSTANT
c=2.998*10^8;           //m/s - VELOCITY OF LIGHT IN VACCUM

//Noise equivalent power
NEP=h*c*sqrt(2*e*Id)/(eeta*e*Lambda);

//Specific detectivity
D=sqrt(A)/NEP;

//Displaying the Results in Command Window
printf("\n\n\t Noise equivalent power = %0.2f X 10^(-14) W.",NEP/10^(-14));
printf("\n\n\t Specific detectivity = %0.1f X 10^8 m H^(1/2)/W.",D/10^(8));