//Chapter-1,Example 1_23,Page 1-46
clc()

//Given Data:
theta=20/3600*%pi/180     //angle of wedge in radians
B=0.25*10^-2              //fringe spacing
u=1.4                     //Refractive index of film

//Calculations:
//We know, B=lam/(2*u*theta).
lam=2*B*theta*u             //wavelength of light
printf('Wavelength of light is =%.10f m',lam)
