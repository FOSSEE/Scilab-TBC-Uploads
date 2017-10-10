//Example number 4.8, Page number 69

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;    //charge(c)
theta=56;    //angle(degree)
V=854;    //voltage(V)
n=1;      //order of diffraction
m=9.1*10**-31;    //mass(kg)
h=6.625*10**-34;   //plank constant
//Calculation
theta=theta*%pi/180;    //angle(radian)
lamda=h/sqrt(2*m*e*V);    //wavelength(m)
d=n*lamda/(2*sin(theta))*10**10;     //spacing of crystal(Angstrom)
//Result
printf("spacing of crystal is %.3f Angstrom",d)
