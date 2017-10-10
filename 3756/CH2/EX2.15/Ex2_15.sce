clc
//
//
//

//Variable declaration
lambdaa=6000*10**-8     //Wavelength
n=3
invde=200               //inverse of diffraction element

//Calculations
sinetheta=(n*lambdaa*invde)
thetarad=asin(sinetheta)
theta=(180/%pi)*(thetarad)
//Result
printf("\n  The Angle of Diffraction is %0.5f degrees",theta)
