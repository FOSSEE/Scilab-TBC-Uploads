//Chapter-2,Example 2_2,Page 2-30
clc()

//Given Data:
m=1                //order
lam=6.5*10^-7      //Wavelength of red light
theta=30*%pi/180   //angle of diffraction

//Calculations:

//We know, a*sin(theta)=m*lam
a=m*lam/sin(theta)   //width of slit
printf('width of slit is = %.7f m',a)
