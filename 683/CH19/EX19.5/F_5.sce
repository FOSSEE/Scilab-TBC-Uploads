// sum 19-5
clc;
clear;
U=(500*2*%pi)+(3*%pi*500/2);
Tm=U/(2*%pi);
delU=2.25*%pi*125/2;
Ks=0.1;
N=250;
w=2*%pi*N/60;
I=delU/(Ks*w^2);
t=0.03;
rho=7800;
R=(I*2/(%pi*rho*t))^(1/4);
V=R*w;
v=0.3;
sigmax=rho*V^2*(3+v)/8*10^-6;

  // printing data in scilab o/p window
  printf("R is %0.3f m    ",R);
  printf("\n sigmax is %0.2f MPa    ",sigmax);
  