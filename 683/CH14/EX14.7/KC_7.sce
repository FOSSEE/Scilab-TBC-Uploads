// sum 14-5
clc;
clear;
P=30*10^3;
N=1440;
w=2*%pi*N/60;
T=P/w;
d=36;
d1=30;
d2=2*d;
d3=d1*2;
l=1.5*d;
Dp=3.5*d;
n=6;
Ft=(2*T)/(Dp*n);
p=0.5;
A=Ft/p;
Lf=d;
dp=A/Lf;
M=Ft*10^3*(5+(Lf/2));
db=(32*M/(%pi*40))^(1/3);
db=15;
T=(4*526)/(%pi*db^2);
sigb=32*M/(%pi*db^3);
sigmax=(sigb/2)+sqrt(((sigb/2)^2)+(T^2));
b=d/4;
t=6;
Lf=36;
La=10;
Do=126+30+(2*(5+1))+(2*6);

  // printing data in scilab o/p window
  printf("sigmax is %0.2f MPa     ",sigmax);
  printf("\n b is %0.0f mm     ",b);
  printf("\n t is %0.0f mm     ",t);
  printf("\n Lf is %0.0f mm     ",Lf);
  printf("\n Do is %0.0f mm     ",Do);