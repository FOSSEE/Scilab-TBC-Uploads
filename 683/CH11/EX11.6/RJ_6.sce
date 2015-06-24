// sum 11-6
clc;
clear;
P=12*10^3;
Tmax=100;
n=6;
e=50+50+(5/2);
T=P*e;
Td=P/n;
ra=125;
k=T/((2*125^2)+(2*75^2)+(2*25^2));
Tr=(k*ra)+Td;
A=Tr/Tmax;
d=sqrt(A*4/%pi);
d=12;

  // printing data in scilab o/p window
  printf(" d is %0.0f mm     ",d);