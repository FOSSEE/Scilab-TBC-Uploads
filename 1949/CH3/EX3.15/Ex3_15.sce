//Chapter-3,Example 3_15,Page 3-24
clc()

//Given Data:
n1=1.45              //R.I.of core
n2=1.40              //R.I. of cladding

//Calculations:
NA=sqrt(n1^2-n2^2)   //Numerical Aperture
printf('Numerical Aperture of Fibre is =%.4f \n \n',NA)

theta0=asin(NA)*180/%pi    //Acceptance angle of fibre
printf(' Acceptance angle of Fibre is =%.2f degrees \n',theta0)
