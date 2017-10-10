clc
//
//
//

//Variable declaration
lambdaa=5896               //Wavelength
N=60000                    //Total Number of lines in 10 cm
n1=2                       //order
n2=3                       //order

//Calculations
RP=n1*N
dlambda=((lambdaa)/(n2*N))

//Result
printf("\n  (a)The resolving power in second order is %0.3f ",RP)
printf("\n  (b) The smallest wavelength that can be resolved in the 3rd order in 5896 Angstrom wavelength region is %0.4f Angstrom",dlambda)
