//Example number 4.2, Page number 66

clc;clear;
close;

//Variable declaration
d=3.04*10**-10;    //lattice spacing(m)
n=3;   //order
lamda=0.79*10**-10;    //wavelength(m)
//Calculation
theta=asin(n*lamda/(2*d));     //glancing angle(radian)
theta=theta*180/%pi;          //glancing angle(degrees)
//Result
printf("glancing angle is %.3f degree",theta)
