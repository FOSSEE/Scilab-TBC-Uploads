//Chapter-1,Example 1_2,Page 1-16
clc()

//Given Data:
theta=40/3600*%pi/180     //angle of wedge in radians
B=0.12*10^-2              //fringe spacing

//Calculations:
//We know, B=lam/(2*u*theta). Here u=1
lam=2*B*theta             //wavelength of light used
printf('Wavelength of light used is =%.10f m',lam)
