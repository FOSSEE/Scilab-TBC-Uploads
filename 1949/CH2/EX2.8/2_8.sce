//Chapter-2,Example 2_8,Page 2-34
clc()

//Given Data:
lam=5.893*10^-7        //Wavelength of light
d=0.01*10^-2           //width of slit (a=d)
f=1                    //distance between screen and slit

//Calculations:
x=f*lam/d              //separation between central maxima and first minima
printf('Separation between central maxima and first minima is = %.6f m \n',x)
