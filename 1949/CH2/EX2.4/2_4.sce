//Chapter-2,Example 2_4,Page 2-31
clc()

//Given Data:
m=1                //order
lam1=4*10^-7       //Wavelength of light
lam2=7*10^-7       //Wavelength of light
n=1/6000*10^-2     //n=(a+b) grating element

//Calculations:

//We know, (a+b)*sin(theta)=m*lam
theta1=asin(m*lam1/n)*180/%pi    //angle of diffraction
theta2=asin(m*lam2/n)*180/%pi    //angle of diffraction
d=theta2-theta1                  //angular breadth of first order visible spectrum
printf('angular breadth of first order visible spectrum is = %.2f degrees',d)
