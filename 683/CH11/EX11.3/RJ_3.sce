//sum 11-3
clc;
clear;
t=15;
t1=5*t/8;
d=25;
n=2;
Ta=80;
sigta=100;
sigba=120;
Ps=n*1.875*%pi*d^2*Ta/4;
Pb=n*d*t*sigba;
p=Pb/(t*Ta)+d;
Pp=p*t*Ta;
n=Pb/Pp;


  // printing data in scilab o/p window
  printf("p is %0.0f mm     ",p);
  printf("\n n is %0.2f      ",n);
 