//Chapter-3,Example 3_3,Page 3-19
clc()

//Given Data:
n1=1.48                 //R.I. of Core
n2=1.39                 //R.I. of Cladding

//Calculations:
NA=sqrt(n1^2-n2^2)      //Formula to find NA
phi=asin(NA)*180/%pi    //Acceptance angle

printf('Numerical Aperture of Fibre is = %.3f \n \n',NA)
printf(' Acceptance angle of Fibre is =%.1f degrees',phi)
