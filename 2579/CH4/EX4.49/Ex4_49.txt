//Ex:4.49
clc;
clear;
close;
f=10*10^3;// frequency in MHz
y=300/f;// wavelength in m
a=5.2/100;// height in m
b=3.8/100;// width in m
A=a*b;// area in m^2
G=(4*%pi*A)/y^2;// the gain of the horn
G1=10*log(G)/log(10);// the gain of the horn in dB
he=(51*y)/b;// the half power point beam width in E-plane in degree
hh=(67*y)/a;// the half power point beam width in H-plane in degree
printf("The gain of the horn = %f", G);
printf("\n The the gain of the horn in dB = %f dB", G1);
printf("\n The half power point beam width in E-plane = %f degree", he);
printf("\n The half power point beam width in H-plane = %f degree", hh);