//Chapter-1,Example 1_5,Page 1-18
clc()

//Given Data:
t=0.2/(100)^2*10^-2   //thickness of film in meter
lam=5.5*10^-7         //wavelength of light in meter
r=0                   //normal incidence
n=1                   //first band

//Calculations:

//Condition for dark fringe is
//2ut*cos r =n*lam
u=n*lam/(2*t*cos(r))   //Refractive index of a oil
printf('Refractive index of a oil is =%.3f ',u)
