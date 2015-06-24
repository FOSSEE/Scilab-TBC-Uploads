// sum 11-7
clc;
clear;
t=15;
d=6*sqrt(t);
d=24;
sigta=75;
sigba=105;
Ta=60;
n=4;
Pt=n*%pi*d^2*Ta/4;
x=d*t*sigta;
y=2*t*sigta;
p=(Pt+x)/y;
p=60;
C=4.17;
pmax=(C*t)+41.28;
Pt1=(y*p)-x;
Ps=n*%pi*d^2*Ta/4;
Pb=n*d*t*sigba;
S=2*p*t*sigta;
n=Pt1/S;
n=n*100;

  // printing data in scilab o/p window
  printf(" n is %0.0f      ",n);
  