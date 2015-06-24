//Chapter-3,Example 3_5,Page 3-20
clc()

//Given Data:
u1=1.5                  //R.I. of Core
u2=1.45                 //R.I.of Cladding
del=(u1-u2)/u1          //Fractional Refractive index

//Calculations:
NA=u1*sqrt(2*del)             //Formula to find NA
theta0=asin(NA)*180/%pi       //Acceptance angle
thetac=asin(u2/u1)*180/%pi    //Critical angle

printf('Numerical Aperture of Fibre is =%.3f \n \n',NA)
printf(' Acceptance angle of Fibre is =%.2f degrees \n \n',theta0)
printf(' Critical angle of Fibre is =%.1f degrees \n',thetac)
