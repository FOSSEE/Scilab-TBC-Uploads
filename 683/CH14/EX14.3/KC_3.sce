// sum 14-3
clc;
clear;
N=360;
w=2*%pi*N/60;
sigyt=380;
r=25;
P=40*10^3;
FOS=3;
T=P/w;
Pt=T*10^3/(2*r);
siga=380/3;
Ta=0.577*380/3;
l1=Pt/(sqrt(2)*12*Ta);
l2=Pt*sqrt(2)/(siga*12);

  // printing data in scilab o/p window
  printf("l1 is %0.0f mm     ",l1);
  printf("\n l2 is %0.2f mm     ",l2);