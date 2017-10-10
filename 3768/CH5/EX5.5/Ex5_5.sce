//Example number 5.5, Page number 86

clc;clear;
close;

//Variable declaration
V=344;    //accelerated voltage(V)
n=1;
theta=60;   //glancing angle(degrees)
//Calculation
theta=theta*%pi/180;    //glancing angle(radian)
lamda=12.27/sqrt(V);
d=n*lamda/(2*sin(theta));    //spacing of crystal(angstrom)
//Result
printf("spacing of crystal is %.4f Angstrom",d)
