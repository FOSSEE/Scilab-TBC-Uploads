//Example 8.3
//Program to determine the wavelength above which an intrinsic 
//photodetector will cease to operate

clear;
clc ;
close ;

//Given data
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
h=6.626*10^(-34);                //J/K - PLANK's CONSTANT
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
Eg=1.43*e;                       //V - BANDGAP ENERGY

//Wavelength determination
Lambda_c=h*c/Eg;

//Displaying the Result in Command Window
printf("\n\n\t The wavelength above which an intrinsic photodetector will cease to operate is %0.2f um.",Lambda_c/10^(-6));