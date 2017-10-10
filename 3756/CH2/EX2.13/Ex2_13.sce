clc
//
//
//

//Variable declaration
lambdaa=5000*10**-8     //Wavelength
theta=30                 //Angular Width


//Calculations
thetarad=((%pi/180)*(theta))
invde=((2*lambdaa)/(sin(thetarad)))**-1

//Result
printf("\n  The number of line cm in grating is %0.3f ",invde)
