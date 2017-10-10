clc
//
//
//

//Variable declaration
mu=4/3            //refractive index
t=1.5             //thickness
cosr=0.7603
lambdaa=5*10**-7  //Wavelength


//Calculations
n=(2*mu*t*cosr*10**-6)/lambdaa

//Result
printf("\n The order of interference of dark band is %i  ",n)

