//Chapter-3,Example 3_12,Page 3-22
clc()

//Given Data:
u1=1.5                  //R.I. of Core
d=10*10^-6              //diameter of core
a=d/2                   //core radius
lam=1.3*10^-6           //wavelength
V=2.405                 //cut off parameter for single mode

//Calculations:

//We know, V=2*%pi*a*NA/lam
NA=V*lam/(2*%pi*a)       //Numerical Aperture

theta=asin(NA)*180/%pi   //Acceptance angle
printf('Acceptance angle of Fibre is =%.2f degrees \n \n',theta)

//Also, NA=u1*sqrt(2*del)
del=(NA/u1)^2/2           //Fractional index
printf(' Maximum Fractional Refractive index of Fibre is =%.4f \n \n',del)

//del=(u1-u2)/u1
u2=u1*(1-del)             //R.I.of cladding
printf(' Refractive index of cladding of Fibre is =%.3f \n',u2)
