//Example number 4.9, Page number 69

clc;clear;
close;

//Variable declaration
n=1;   //order
h=2;
k=0;
l=2;
theta=34;    //angle(degree)
lamda=1.5;   //wavelength(angstrom)
//Calculation
theta=theta*%pi/180;    //angle(radian)
d=n*lamda/(2*sin(theta));     //spacing of crystal(angstrom)
a=d*sqrt(h**2+k**2+l**2);     //lattice parameter(angstrom)
//Result
printf("lattice parameter is %.3f Anstrom",a)
//answer in the book is wrong
