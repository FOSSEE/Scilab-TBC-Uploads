//Chapter-3,Example 3_11,Page 3-22
clc()

//Given Data:
u1=1.54                  //R.I. of Core
u2=1.5                   //R.I.of Cladding
lam=1.3*10^-6            //wavelength in meter
a=25*10^-6               //core radius in meter

//Calculations:
NA=sqrt(u1^2-u2^2)       //Formula to find Numerical Aperture

V=2*%pi*a*NA/lam         //cut off parameter
printf('Cut off parameter of Fibre is =%.2f \n \n',V)

N=(V^2)/2                //Number of modes
printf(' Number of modes of Fibre is =%.0f \n',N)
