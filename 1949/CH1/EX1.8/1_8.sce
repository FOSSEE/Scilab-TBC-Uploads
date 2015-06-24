//Chapter-1,Example 1_8,Page 1-19
clc()

//Given Data:
lam=5.893*10^-7       //Wavelength of light
theta=1               //assuming value of theta

//We know, B=lam/(2*u*theta). Here u=1
B=lam/(2*theta)       //fringe spacing
n=20                  //interference fringes

//Calculations:
//t=n*B*tan(theta)
t=20*B*theta          //Thickness of wire
printf('Thickness of wire is =%.9f m',t)
