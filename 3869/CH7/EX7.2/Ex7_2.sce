clear
//
//
//

//Variable declaration
lamda=0.58        //wavelength(angstrom)
theta1=6.45*%pi/180     //glancing angle(radian)
theta2=9.15*%pi/180     //glancing angle(radian)
theta3=13*%pi/180     //glancing angle(radian)
n=1                //order

//Calculation
d1=lamda/(2*sin(theta1))     //interplanar spacing at 1st angle(angstrom)
d2=lamda/(2*sin(theta2))     //interplanar spacing at 2nd angle(angstrom)
d3=lamda/(2*sin(theta3))     //interplanar spacing at 3rd angle(angstrom)

//Result
printf("\n interplanar spacing at 1st angle is %0.3f  angstrom",d1)
printf("\n interplanar spacing at 2nd angle is %0.3f  angstrom",d2)
printf("\n interplanar spacing at 3rd angle is %0.3f  angstrom",d3)
printf("\n answers given in the book are wrong")
