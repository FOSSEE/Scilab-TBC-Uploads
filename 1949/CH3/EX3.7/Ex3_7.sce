//Chapter-3,Example 3_7,Page 3-21
clc()

//Given Data:
u1=1.466                 //R.I. of Core
u2=1.46                  //R.I.of Cladding
V=2.4                    //Cut off parameter
lam=0.8*10^-6            //wavelength in meter

//Calculations:
NA=sqrt(u1^2-u2^2)       //Formula to find Numerical Aperture
printf('Numerical Aperture of Fibre is =%.2f \n',NA)
//(printing mistake in book)printed answer is 1.13 but correct answer is 0.13
printf('(printing mistake in book) \n \n')

// V = 2*%pi*a*NA / lam
a=V*lam/(2*%pi*NA)   //core radius
printf(' Core radius of Fibre is (a) =%.8f m \n \n',a)

//w/a= 1.1
w=1.1*a                  //Spot size
printf(' Spot size of Fibre is =%.8f m \n \n',w)

theta=2*lam*180/%pi/(%pi*w)       //Divergence angle
printf(' Divergence angle of Fibre is =%.2f degrees \n \n',theta)

w10=lam*10/(%pi*w)        //Spot size at 10 m
printf(' Spot size at 10 m of Fibre is =%.2f m \n \n',w10)
