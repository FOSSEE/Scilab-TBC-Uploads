//Chapter-2,Example 2_26,Page 2-48
clc()

//Given Data:
m=2                //order
lam=6*10^-7        //Wavelength of light
dlam=6*10^-10      //difference in wavelength
W=2*10^-2          //Width of surface

//Calculations:

//We know that R.P.=lam/dlam=m*N
N=lam/dlam/m      //Number of lines on grating
GE=W/N            //Grating element=(a+b)
printf('Grating element is = %.6f cm \n \n',GE)
