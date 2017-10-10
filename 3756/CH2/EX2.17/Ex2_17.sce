clc
//
//
//

//Variable declaration
lambdaa=5000*10**-8     //Wavelength
N=40000                 //Grating lines
de=12.5*10**-5          //Diffraction element

//Calculations
RPmax=((de*N)/lambdaa)

//Result
printf("\n  The Maximum resolving power is %i or 10**5",RPmax)
