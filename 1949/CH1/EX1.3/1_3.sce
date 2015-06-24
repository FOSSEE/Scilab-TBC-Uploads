//Chapter-1,Example 1_3,Page 1-17
clc()

//Given Data:
i=30*%pi/180         //angle of incidence
u=1.46               //Refractive index of a oil
lam=5.890*10^-7      //wavelength of required yellow light
n=8                  //eighth dark band

//Calculations:
//u=sin i/sin r      //Snell's law   .So,
r=asin(sin(i)/u)     //angle of reflection

//Now, condition for dark fringe is
//2ut*cos r=n*lam
t=n*lam/(2*u*cos(r))      //thickness of film
printf('Thickness of the film is =%.10f m',t)
