clc
//
//
//

//Variable declaration
lambdaa1=4000*10**-8     //Wavelength1
lambdaa2=7000*10**-8     //Wavelength2
invde=4000               //Diffraction element inverse

//Calculations
n1=(1/(lambdaa1*invde))
n2=(1/(lambdaa2*invde))
//Result
printf("\n The orders visible will be from %i   to %i   order Spectrum",n2,n1)
