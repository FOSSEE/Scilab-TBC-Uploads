clc
//
//
//

//Variable declaration
n=8                   //number of fringes
lambdaa=5893*10**-10   //Wavelength
mu=1.5                //Refractive index
cosr=(2*sqrt(2))/3
//Calculations
t=(n*lambdaa*10**6)/(2*mu*cosr)

//Result
printf("\n The Thickness is  %0.3f  mu m",t)
