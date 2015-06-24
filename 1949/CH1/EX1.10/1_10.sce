//Chapter-1,Example 1_10,Page 1-21
clc()

//Given Data:
u1=1.2               //Refractive index of drop of oil
u2=1.33              //Refractive index of water
lam=4.8*10^-7        //wavelength of light
n=3                  //order
r=0                  //normal incidence,so r=0

//Calculations:
t=n*lam/(2*u1)        //Thickness of oil drop
printf('Thickness of oil drop is =%.8f m',t)
