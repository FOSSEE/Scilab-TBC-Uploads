//Example 2.6
//Program to estimate 
//(a) The maximum core diameter of an optical fiber for Example 2.4 
//(b) The new core diameter for single mode operation when the 
//relative refractive index difference is reduced by a factor of 10

clear;
clc ;
close ;

//Given data
V=2.4;                  //Normalized Frequency
lambda=0.85*10^(-6);    //metre - OPERATING WAVELENGTH
n1=1.48;                //CORE REFRACTIVE INDEX 
delta=0.015;            //RELATIVE REFRACTIVE INDEX DIFFERENCE

//(a) The maximum core radius of the optical fiber with delta=1.5%
a1=V*lambda/(2*%pi*n1*sqrt(2*delta));

//(b) The new core radius for single mode operation when the 
//relative refractive index difference is reduced by a factor of 10
delta=delta/10;
a2=V*lambda/(2*%pi*n1*sqrt(2*delta));

//Displaying the Results in Command Window
printf("\n\n\t The maximum core diameter of the optical fiber with delta 1.5 percent is %0.1f micrometre.",2*a1*10^6);
printf("\n\n\t The new core diameter for single mode operation when the relative refractive index difference is reduced by a factor of 10 is %0.1f micrometre.",2*a2*10^6);