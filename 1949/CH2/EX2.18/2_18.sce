//Chapter-2,Example 2_18,Page 2-39
clc()

//Given Data:
N=2.54/2620*10^-2     //N=(a+b) grating element
lam=5*10^-7           //Wavelength of red light

//Calculations:

//We know, (a+b)*sin(theta)=n*lam
//maximum value of sin(theta)=1
n=N/lam               //Maximum number of orders visible
printf('Maximum number of orders visible is = %.0f ',n)
