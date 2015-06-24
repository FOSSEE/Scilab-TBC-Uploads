// sum 11-9
clc;
clear;
D=1200;
p=2.5;
sigba=110;
Pa=%pi*D^2*p/4;
nt=0.8;
sigta=80;
t=p*D/(2*sigta*nt);
t=24;
d=6*sqrt(t);
d=30;
Ta=55;
Ps=%pi*(d^2)*Ta/4;
Np=Pa/Ps;
Np=74;
nr=Np/2;
p=%pi*(D+t)/nr;
pb=2*d;
m=1.5*d;
Pt=(p-d)*t*sigta;
Ps=2*Ps;
Pb=2*d*t*sigba;
Pp=p*t*sigta;
n=Ps/Pp;
n=n*100;

  // printing data in scilab o/p window
  printf(" n is %0.0f      ",n);