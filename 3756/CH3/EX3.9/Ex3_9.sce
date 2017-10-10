clc
//
//
//

//Variable declaration
lambdaa=5000*10**-10      //Wavelength
muo=1.5418               //Refractive index of ordinary rays
mue=1.5508               //Refractive index of extra ordinary rays
t=0.032*10**-3                //thickness

//Calculations
orot=((2*(t*(mue-muo)))/lambdaa)

//Result
printf("\n The Amount of optical rotation produced is %i radians",orot)
