//Chapter-2,Example 2_23,Page 2-47
clc()

//Given Data:
m=1                           //order
lam1=5.89*10^-7               //Wavelength of light
lam2=5.896*10^-7              //Wavelength of light

//Calculations:
dlam=lam2-lam1                //difference in wavelength
lam=(lam2+lam1)/2             //Mean wavelength

//We know that R.P.=m*N=lam/dlam
N=lam/dlam/m                  //minimum number of lines which will just resolve
printf('Minimum number of lines which will just resolve is = %.1f  \n \n',N)
