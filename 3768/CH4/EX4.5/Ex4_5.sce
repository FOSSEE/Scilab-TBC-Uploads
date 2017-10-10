//Example number 4.5, Page number 67

clc;clear;
close;

//Variable declaration
a=3;    //lattice spacing(m)
n=1;   //order
lamda=0.82*10**-9;    //wavelength(m)
theta=75.86;    //angle(degree)
//Calculation
theta=theta*%pi/180;    //angle(radian)
d=n*10**10*lamda/(2*sin(theta));    //spacing(angstrom)
//Result
printf("spacing is %.2f Angstrom",d)
//answer in the book is wrong. hence the miller indices given in the book are also wrong.
