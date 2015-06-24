//Chapter-2,Example 2_29,Page 2-50
clc()

//Given Data:
GE=2.54/16000*10^-2      //GE=(a+b) grating element
lam=6*10^-7              //Wavelength of light

//Calculations:

//We know, (a+b)*sin(theta)=m*lam
//maximum value of sin(theta)=1
m=GE/lam                 //Maximum order of spectra
printf('Maximum order of spectra is = %.1f \n \n',m)
