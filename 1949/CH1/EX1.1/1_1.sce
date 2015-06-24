//Chapter-1,Example 1_1,Page 1-16
clc()

//Given Data:
i=45*%pi/180         //angle of incidence
u=1.33               //Refractive index of a soap film
lam=5.896*10^-7      //wavelength of required yellow light

//Calculations:
//u=sin i/sin r      //Snell's law   .So,
r=asin(sin(i)/u)     //angle of reflection

//Now, condition for bright fringe is
//2ut*cos r=(2n-1)lam/2
//Here n=1
t=lam/(2*2*u*cos(r))      //minimum thickness of film at which light will appear bright yellow
printf('Minimum thickness of film at which light will appear bright yellow of required wavelength is =%.10f m',t)
