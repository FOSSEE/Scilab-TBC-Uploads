//Ex:4.6
clc;
clear;
close;
x=2;// index profile
dl=0.0126;// index difference
a=(85/2)*10^-6;// core radius
R=2*10^-3;// curve of radius
n1=1.45;// core refractive index
k=6.28;
y=850*10^-9;// wavelength in m
A=(x+2)/(2*x*dl);
B=(2*a/R);
C=(3*y/(2*k*R*n1))^(2/3);
D=B+C;
E=A*D;
F=1-E;
Lm=-10*log(1-A*(B+C))/log(10);// macrobend loss in dB
printf("The macrobend loss =%f dB", Lm);
printf("\n The answer is wrong in the textbook");