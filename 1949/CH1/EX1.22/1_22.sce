//Chapter-1,Example 1_22,Page 1-46
clc()

//Given Data:
u=1.5               //Refractive index of a oil
lam=5.88*10^-7      //wavelength of required yellow light
n=1                 //for smallest thickness
r=60*%pi/180        //angle of reflection

//Calculations:

//Now, condition for dark fringe is
//2ut*cos r=n*lam
t=n*lam/(2*u*cos(r))      //thickness of film
printf('Thickness of the film is =%.10f m',t)
