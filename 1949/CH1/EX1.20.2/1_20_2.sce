//Chapter-1,Example 1_20_2,Page 1-53
clc()

//Given Data:
r=45*%pi/180         //angle of refraction
u=1.45               //Refractive index of a medium
lam=5.5*10^-7        //wavelength of required yellow light
n=1

//Calculations:

//Now, condition for dark fringe is
//2ut*cos r=n*lam
t=n*lam/(2*u*cos(r))      //thickness of thin medium
printf('Thickness of the thin medium is =%.10f m',t)
