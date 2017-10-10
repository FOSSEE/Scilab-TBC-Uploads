//Example number 4.4, Page number 67

clc;clear;
close;

//Variable declaration
n=1;   //order
lamda=3*10**-10;    //wavelength(m)
h=1;
k=0;
l=0;
theta=40;    //angle(degree)
//Calculation
theta=theta*%pi/180;    //angle(radian)
d=n*lamda/(2*sin(theta));     //space of plane(m)
a=d*sqrt(h**2+k**2+l**2);     
V=a**3;      //volume of unit cell(m**3)
//Result
printf("space of plane is %.4f Angstrom",d*10**10)
printf("\n volume of unit cell is %.3e m**3",V)
