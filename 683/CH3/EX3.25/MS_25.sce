// sum 3-25
clc;
clear;
P=2*10^6;
N=200;
w=2*%pi*N/60;
Tm=P/w;
W=5*10^3*9.81;
l=1800;
Mmax=W*l/4;
Tmax=1.8*Tm*10^3;
Me=(Mmax+sqrt(Mmax^2+Tmax^2))/2;
Te=sqrt(Mmax^2+Tmax^2);
sig=60;
Ts=40;
d1=(32*Me/(%pi*sig))^(1/3);
d2=(16*Te/(%pi*Ts))^(1/3);

  // printing data in scilab o/p window
  printf("d is %0.1f mm    ",d2);