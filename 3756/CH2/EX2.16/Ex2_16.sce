clc
//
//
//

//Variable declaration
lambdaa=5000*10**-10     //Wavelength
theta=30                 //Angular Width
dtheta=0.01

//Calculations
thetarad=((%pi/180)*(theta))
dlambda=((lambdaa*cos(thetarad))/(sin(thetarad)))*10**8

//Result
printf("\n  The difference between the two wavelengths is %2.1f Angstrom",dlambda)
