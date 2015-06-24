//Chapter-1,Example 1_7,Page 1-19
clc()

//Given Data:
i=30*%pi/180         //angle of incidence
u=1.43               //Refractive index of a soap film
lam=6*10^-7          //wavelength of light
n=1                  //For minimum thickness

//Calculations:
//u=sin i/sin r      //Snell's law   .So,
r=asin(sin(i)/u)     //angle of reflection

//Now, condition of minima in transmitted system is
//2ut*cos r=(2n-1)lam/2
t=lam/(2*2*u*cos(r))      //minimum thickness of film
printf('Minimum thickness of film is =%.9f m',t)
