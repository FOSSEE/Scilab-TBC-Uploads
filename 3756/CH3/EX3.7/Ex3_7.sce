clc
//
//
//

//Variable declaration
lambdaa=5893*10**-10   //Wavelength
muo=1.551              //Refractive index of ordinary rays
mue=1.54               //Refractive index of extra ordinary rays

//Calculations
t=((lambdaa)/(2*(muo-mue)))*10**2

//Result
printf("\n The thickness of the crystal is %0.5f cm",t)
