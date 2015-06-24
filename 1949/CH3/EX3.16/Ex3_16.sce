//Chapter-3,Example 3_16,Page 3-24
clc()

//Given Data:
NA=0.16              //Numerical Aperture of Fibre
n1=1.45              //R.I. of core
d=90*10^-6           //Core diameter

//Calculations:
//NA=sqrt(n1^2-n2^2)
n2=sqrt(n1^2-NA^2)    //R.I.of cladding
printf('(a)Refractive Index of cladding of fibre is =%.3f \n \n',n2)

theta0=asin(NA)*180/%pi    //Acceptance angle of fibre
printf(' (b)Acceptance angle of Fibre is =%.2f degrees \n',theta0)
