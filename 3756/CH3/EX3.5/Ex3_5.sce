clc
//
//
//

//Variable declaration
lambdaa=6000*10**-10  //Wavelength
muo=1.55              //Refractive index of ordinary rays
mue=1.54              //Refractive index of extra ordinary rays

//Calculations
t=((lambdaa)/(2*(muo-mue)))*10**2

//Result
printf("\n The thickness of the crystal is  %0.3f cm",t)
