clc//
//
//

//Variable declaration
lamda=1.5418;      //wavelength(angstrom)
theta=30;      //angle(degrees)
n=1;    //first order
h=1;
k=1;
l=1;

//Calculation
theta=theta*%pi/180;    //angle(radian)
d=n*lamda/(2*sin(theta));     
a=d*sqrt(h^2+k^2+l^2);    //interatomic spacing(angstrom)

//Result
printf("\n interatomic spacing is %0.2f angstrom",a)
