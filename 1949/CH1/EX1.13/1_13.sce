//Chapter-1,Example 1_13,Page 1-41
clc()

//Given Data:

B=0.25*10^-2             //fringe spacing
lam=5.5*10^-7            //Wavelength of light
u=1.4                    //Refractive index of wedge

//Calculations:
//We know, B=lam/(2*u*theta).
theta1=lam/(2*u*B)          //angle of wedge in radians
theta=theta1*3600*180/%pi   //angle of wedge in seconds
printf('Angle of wedge is =%.1f seconds',theta)
