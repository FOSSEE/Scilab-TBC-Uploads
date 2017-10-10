clc
//
//
//

//Variable declaration
s=2.143*10**-3
mu=1.542  //refractive index
lambdaa=5893*10**-10 //Wavelength
Beta=0.347*10**-3

//Calculations
t=(s*lambdaa*10**6)/(Beta*(mu-1))

//Result
printf("\n The refractive index is  %0.2f mu m",t)
