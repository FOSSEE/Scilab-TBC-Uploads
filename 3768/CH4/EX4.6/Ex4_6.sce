//Example number 4.6, Page number 68

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;    //charge(c)
m=9.1*10**-31;    //mass(kg)
h=6.625*10**-34;   //plank constant
n=1;   //order
theta=9+(12/60)+(25/(60*60));    //angle(degree)
V=235.2;    //kinetic energy of electron(eV)
//Calculation
theta=theta*%pi/180;    //angle(radian)
lamda=h*10**10/sqrt(2*m*e*V);   
d=n*lamda/(2*sin(theta));       //interplanar spacing(angstrom)
//Result
printf("interplanar spacing is %.3f Angstrom",d)
//answer in the book is wrong
