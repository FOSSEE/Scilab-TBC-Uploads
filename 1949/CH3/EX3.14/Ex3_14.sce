//Chapter-3,Example 3_14,Page 3-24
clc()

//Given Data:
NA1=0.20              //Numerical Aperture of Fibre
n2=1.59               //R.I. of cladding

//Calculations:
// NA=sqrt(n1^2-n2^2)
//In air, n0=1
n1=sqrt(NA1^2+n2^2)     //R.I.of core

//Now, in water 
n0=1.33
NA2=sqrt(n1^2-n2^2)/n0      //Numerical Aperture in water
theta0=asin(NA2)*180/%pi    //Acceptance angle of fibre in water
printf('Acceptance angle of Fibre in water is =%.1f degrees \n',theta0)
