//Chapter-2,Example 2_1,Page 2-30
clc()

//Given Data:
m=4       //order
N=1/5000*10^-2    //N=(a+b) grating element

//Calculations:

//We know, (a+b)*sin(theta)=m*lam
//for longest wavelength, sin(theta)=1
lam=N/m      //longest wavelength
printf('The longest wavelength is =%.10f m',lam)

