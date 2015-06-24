//Chapter-3,Example 3_10,Page 3-22
clc()

//Given Data:
u1=1.465                  //R.I. of Core
u2=1.46                   //R.I.of Cladding
lam=1.25*10^-6            //operating wavelength

//Calculations:
del=(u1-u2)/u1            //Fractional Refractive index
printf('Fractional Refractive index of Fibre is =%.6f \n \n',del)

//For single mode propagation codition is 
// a/lam< 1.4/(%pi*sqrt(u1(u1-u2)))

a=lam*1.4/(%pi*u1*sqrt(del))      //core radius

u=u1-(sqrt(2*del)/(2*%pi*(a/lam)))     //effective refractive index
printf(' Effective Refractive index for lowest mode propagation is =%.3f \n',u)
