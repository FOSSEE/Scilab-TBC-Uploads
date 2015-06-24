//Chapter-2,Example 2-33,Page 2-48
clc()

//Given Data:
m=1                 //order
lam=6.553*10^-7     //Wavelength of light
dlam=1.8*10^-10     //difference in wavelength


//Calculations:

//We know that R.P.=lam/dlam=m*N
N=lam/dlam/m        //Number of lines on grating
printf('Number of lines on grating is = %.0f  \n \n',N)
