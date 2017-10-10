clc
//
//
//

//Variable declaration
lambdaa=6000*10**-8     //Wavelength
sinetheta=(3/4)         //Angular Width
n=4

//Calculations
gratingele=((n*lambdaa)/sinetheta)
//Result
printf("\n  The grating element is %0.5f cm",gratingele)
