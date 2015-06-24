//Chapter-2,Example 2_32,Page 2-52
clc()

//Given Data:
lam1=5.89*10^-7               //Wavelength of light
lam2=5.896*10^-7              //Wavelength of light

//Calculations:
dlam=lam2-lam1                //difference in wavelength
lam=(lam2+lam1)/2             //Mean wavelength

//i)
m1=1               //first order
//We know that R.P.=lam/dlam=m*N
N1=lam/dlam/m1      //Number of lines on grating
printf('i)Number of lines on grating for first order is = %.0f  \n \n',N1)

//ii)
m2=2               //second order
//We know that R.P.=lam/dlam=m*N
N2=lam/dlam/m2      //Number of lines on grating
printf(' ii)Number of lines on grating for second order is = %.0f  \n \n',N2)
