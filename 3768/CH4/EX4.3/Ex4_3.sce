//Example number 4.3, Page number 66

clc;clear;
close;

//Variable declaration
a=0.28*10**-9;    //lattice spacing(m)
n=2;   //order
lamda=0.071*10**-9;    //wavelength(m)
h=1;
k=1;
l=0;
//Calculation
d110=a/sqrt(h**2+k**2+l**2);     //spacing(m)
theta=asin(n*lamda/(2*d110));    //glancing angle(radian)
theta=theta*180/%pi;          //glancing angle(degrees)
//Result
printf("glancing angle is %.2f degree",theta)
//answer in the book is wrong
