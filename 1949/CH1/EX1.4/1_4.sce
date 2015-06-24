//Chapter-1,Example 1_4,Page 1-17
clc()

//Given Data:

B=0.1*10^-2               //fringe spacing
lam=5.893*10^-7           //Wavelength of light
u=1.52                    //Refractive index of wedge

//Calculations:
//We know, B=lam/(2*u*theta). Here u=1
theta1=lam/(2*u*B)          //angle of wedge in radians
theta=theta1*3600*180/%pi   //angle of wedge in seconds
printf('Angle of wedge is =%.0f seconds of an arc',theta)
