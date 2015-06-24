//Ex:1.34
clc;
clear;
close;
// 3*(1/r^2)=w/(r*c)
// 3/r=(2*%pi*f/c)
// r=(1/(2*%pi))*3
r=(1/(2*%pi))*3;// distance in terms of y(wavelength)
r1=(1/(2*%pi))*50;// distance in terms of y(wavelength)
printf("The distance when component of M-field three times the induction field = %f*y", r);
printf("\n The distance when component of M-field 50 times the induction field= %f*y", r1);