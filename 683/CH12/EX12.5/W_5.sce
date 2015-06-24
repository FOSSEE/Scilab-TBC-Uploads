// sum 12-5
clc;
clear;
h=10;
t=10/sqrt(2);
Ta=80;
x=((50*25)+(50*0))/(50+50);
y=x;
ra=sqrt(x^2+37.5^2);
Ixx=(7.07*50^3/12)+(50*7.07*(12.5^2))+(50*7.07*12.5^2);
IG=2*Ixx;
e=100+(50-12.5);
Tr=16.09*10^-3;
P=Ta/Tr;
P=P*10^-3;

  // printing data in scilab o/p window
  printf("P is %0.3f KN     ",P);