//Chapter-1,Example 1_9,Page 1-20
clc()

//Given Data:
u1=1.3             //Refractive index of oil
u2=1.5             //Refractive index of glass
lam1=7*10^-7       //Wavelength of light
lam2=5*10^-7       //Wavelength of light

//Calculations:

//for finding value of n, solve:
//(2n+1)*lam1/2=(2(n+1)+1)*lam2/2
//We get,n=2
n=2

toil=(2*n+1)*lam1/(2*u1*2)     //thickness of oil layer
printf('Thickness of oil layer is =%.9f m',toil)
