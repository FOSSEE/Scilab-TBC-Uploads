clc
//
//
//

//Variable declaration
lambdaa=4000*10**-10      //Wavelength
mul=1.55821               //Refractive index of left landed
mur=1.55810               //Refractive index of right landed
t=2*10**-3                //thickness

//Calculations
orot=(180/%pi)*((2*3.14*(t*(mul-mur)))/lambdaa)

//Result
printf("\n The Amount of optical rotation produced is %3.0f degrees",orot)
