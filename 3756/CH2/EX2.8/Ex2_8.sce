clc
//
//
//

//Variable declaration
n=2                  //order of spectral line
theta=30             //Angular Width
invde=5000           //Inverse of diffraction element

//Calculations
thetarad=(%pi/180)*(theta)
sinetheta=sin(thetarad)
lambdaa=((sinetheta)/(n*invde))*10**8

//Result
printf("\n The Wavelength is %i Angstrom",lambdaa)
