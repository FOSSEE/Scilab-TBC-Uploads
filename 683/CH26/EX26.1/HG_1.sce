// sum 26-1
clc;
clear;
Zp=20;
Zg=50;
alphan=20*%pi/180;
phi=15*%pi/180;
mn=4;
m=mn/cos(phi);
alpha=180/%pi*atan(tan(alphan)/(cos(phi)));
dp=Zp*m;
dg=Zg*m;
ha=4;
hd=1.25*mn;
//Let addendum circle dia of pinion be Pa
Pa=dp+(2*mn);
//Let dedendum circle dia of pinion be Pd
Pd=dp-(2.5*mn);
//Let addendum circle dia of gear be Ga
Ga=dg+(2*mn);
//Let dedendum circle dia of gear be Gd
Gd=dg-(2.5*mn);
b=%pi*mn/sin(phi);

  // printing data in scilab o/p window
  printf("m is %0.2f mm  ",m);
  printf("\n alpha is %0.3f deg  ",alpha);
  printf("\n Pa is %0.1f mm   ",Pa);
  printf("\n Pd is %0.1f mm   ",Pd);
  printf("\n Ga is %0.0f mm   ",Ga);
  printf("\n Gd is %0.0f mm   ",Gd);
  printf("\n b is %0.2f mm   ",b);
