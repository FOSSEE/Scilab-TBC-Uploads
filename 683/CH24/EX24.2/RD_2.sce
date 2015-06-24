// sum 24-2
clc;
clear;
W=1000;
m=0.498;
BL=78;
d=12;
Am=0.39*d^2;
dw=sqrt(Am*4/(6*19*%pi));
Ew=74.4*10^3;
Ds=56*d;
sigb=Ew*dw/Ds;
Wb=sigb*%pi*(d^2)/4*10^-3;
l=20;
Ws=m*l;
a=1.2;
Wa=a*(W/2+Ws)*10^-3;
//Let the static load be Ps
Ps=(W/2+Ws)*9.81*10^-3;
//let the effective load  be Peff
Peff=Ps+Wb+Wa;
FOS1=BL/Peff;
FOS2=BL/(5+0.612);

  // printing data in scilab o/p window
  printf("annual FOS is %0.2f    ",FOS1);
  printf("\n FOS neglecting bending load is %0.1f    ",FOS2);
