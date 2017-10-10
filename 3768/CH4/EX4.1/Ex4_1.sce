//Example number 4.1, Page number 66

clc;clear;
close;

//Variable declaration
d=0.282*10**-9;    //lattice spacing(m)
theta=8+(35/60);   //glancing angle(degree)
n=1;   //order
Theta=90;    //angle(degree)
//Calculation
theta=theta*%pi/180;    //angle(radian)
Theta=Theta*%pi/180;    //angle(radian)
lamda=2*d*sin(theta)/n;    //wavelength(m)
nmax=2*d*sin(Theta)/lamda;    //maximum order of diffraction
//Result
printf("wavelength is %.3f Angstrom",lamda*10**10)
//answer varies due to rounding off errors
printf("\n maximum order of diffraction is %d",round(nmax))
