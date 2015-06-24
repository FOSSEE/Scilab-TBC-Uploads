//Chapter-2,Example 2_13,Page 2-36
clc()

//Given Data:
lam=6.328*10^-7        //Wavelength of light
N=1/6000*10^-2         //N=(a+b) grating element

//Calculations:

//We know, N*sin(theta)=m*lam
theta1=asin(1*lam/N)*180/%pi    //angular position in first order maxima,m=1
printf('Angular position in first order maxima is = %.2f degrees \n \n',theta1)

theta2=asin(2*lam/N)*180/%pi    //angular position in second order maxima,m=2
printf(' Angular position in second order maxima is = %.2f degrees \n',theta2)
