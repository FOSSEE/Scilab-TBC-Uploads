// sum 11-8
clc;
clear;
D=1500;
p=2;
nt=0.75;
sigut=420;
FOS=5;
sigta=sigut/FOS;
t=p*D/(2*sigta*nt);
t=24;
d=6*sqrt(t);
d=30;
Ta=330/5;
sigba=640/5;
Ps=2*1.875*%pi*(d^2)*Ta/4;
p=(Ps/(t*sigta))+d;
p=117;
t1=5*t/8;
Pt=(p-d)*t*sigta;
Pp=p*t*sigta;
Pb=2*d*t*sigba;
n=Ps/Pb;
n=n*100;

  // printing data in scilab o/p window
  printf(" n is %0.0f      ",n);