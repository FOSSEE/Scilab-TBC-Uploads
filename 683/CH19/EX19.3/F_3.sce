// sum 19-3
clc;
clear;
N=300;
Ks=0.03;
rho=7150;
Kr=0.9;
w=2*%pi*N/60;
WD=(300*2*%pi)+(4*%pi*200/4);
Tm=400;
delU=%pi*200/16;
Ir=Kr*delU/(w^2*Ks);
R=Ir/(rho*1.5*0.1*0.1*2*%pi);
R=R^(1/5);
t=0.1*R*1000;
b=1.5*t;

  // printing data in scilab o/p window
  printf("t is %0.2f mm    ",t);
  printf("\n b is %0.2f mm    ",b);
  printf("\n R is %0.4f m    ",R);