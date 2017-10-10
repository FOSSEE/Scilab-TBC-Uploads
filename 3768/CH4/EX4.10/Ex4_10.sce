//Example number 4.10, Page number 70

clc;clear;
close;

//Variable declaration
n=1;   //order
h=1;
k=1;
l=1;
e=1.6*10**-19;    //charge(c)
V=5000;    //voltage(V)
m=9.1*10**-31;    //mass(kg)
H=6.625*10**-34;   //plank constant
d=0.204*10**-9;    //interplanar spacing(m)
//Calculation
lamda=H/sqrt(2*m*e*V);    //wavelength(m)
theta=asin(n*lamda/(2*d));    //bragg's angle(radian)
theta=theta*180/%pi;    //bragg's angle(degree)
//Result
printf("bragg''s angle is %.4f degree",theta)
