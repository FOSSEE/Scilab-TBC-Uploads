clc
//
//
//

//Variable declaration
a=25*10**-6                   //core radius
lambdaa=0.85*10**-6    //Wavelength
NA=0.22                //Numerical Aperture

//Calculations
V=((2*3.14*a*0.22)/lambdaa)
N=((V**2)/4)

//Result
printf("\n (a) The V number is %2.2f ",V)

printf("\n (b) The number of modes are %3.2f ",N)

