clc//
//
//

//Variable declaration
V=344;    //voltage(V)
n=1;
theta=60*%pi/180;    //angle(radian)

//Calculation
lamda=(12.26/sqrt(V));      //de broglie wavelength(angstrom)

d=n*lamda/(2*sin(theta));    //spacing of crystal(angstrom)

//Result
printf("\n spacing of crystal is %0.4f angstrom",d)
