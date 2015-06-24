//Ex:4.50
clc;
clear;
close;
N=30;// number of turns
// Diameter, d=y/3, where, y= wavelength
// spacing, S=y/5
// hpbw=52/((pi*d/y)*sqrt(NS/y))=52/((pi*y/3y)*sqrt(30y/5y))
hpbw=53*3/(%pi*sqrt(30/5));// half power point beam width in degree
// the directivity, D=15*NS*(pi*d)^2/y^3=((15*30*y)/(5y^3))*(pi*y/3)^2
D=15*30*%pi^2/(5*3^2);// the directivity
D1=10*log(D)/log(10);// the directivity in dB
printf("The half power point beam width = %f degree", hpbw);
printf("\n The directivity = %f", D);
printf("\n The directivity in dB= %f dB", D1);