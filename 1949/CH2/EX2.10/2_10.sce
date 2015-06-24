//Chapter-2,Example 2_10,Page 2-34
clc()

//Given Data:
lam=6*10^-7            //Wavelength of light
a=0.02*10^-2           //width of slit (a=d)
f=2                    //distance between screen and slit

//Calculations:

//We know, a*sin(theta)=m*lam, here m=1
theta=asin(lam/a)*180*60/%pi      //angular position in first minima (1 degree=60 minutes)
printf('Total angular width is = %.2f minutes \n \n',2*theta)

x=f*lam/a              //separation between central maxima and first minima
printf(' Linear width is = %.6f m \n',2*x)
