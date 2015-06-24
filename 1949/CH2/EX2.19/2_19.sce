//Chapter-2,Example 2_19,Page 2-40
clc()

//Given Data:
N=1/4000*10^-2       //N=(a+b) grating element
lam1=5*10^-7         //Wavelength of light
lam2=7.5*10^-7       //Wavelength of light

//Calculations:

//We know, (a+b)*sin(theta)=n*lam
//maximum value of sin(theta)=1
n1=N/lam1               //Maximum number of orders visible
n2=N/lam2               //Maximum number of orders visible
printf('The observed number of orders range between = %.0f ',n2)
printf('to %.0f',n1)
