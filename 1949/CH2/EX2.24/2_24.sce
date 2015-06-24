//Chapter-2,Example 2_24,Page 2-47
clc()

//Given Data:
N=5*5000           //N=W/(a+b) Number of lines on grating
m=2                //order
lam=6*10^-7        //Wavelength of light

//Calculations:
//i)
RP=m*N             //Resolving power
printf('i)Resolving power is = %.0f  \n \n',RP)

//ii)
//We know that R.P.=lam/dlam
dlam=lam/RP        //Smallest wavelength which can be resolved
printf(' ii)Smallest wavelength which can be resolved is = %.12f m \n \n',dlam)
