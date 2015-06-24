// sum 26-2
clc;
clear;
P=5000;
Zp=25;
Zg=50;
mn=4;
alphan=20*%pi/180;
phi=20*%pi/180;
N=1200;
m=mn/cos(phi);
dp=Zp*m;
dg=Zg*m;
v=2*%pi*N*dp/(60*2*1000);
Pt=P/v;
Pa=Pt*tan(phi);
Pr=Pt*tan(alphan)/cos(phi);

  // printing data in scilab o/p window
  printf("Pt is %0.2f N   ",Pt);
  printf("\n Pa is %0.1f N  ",Pa);
  printf("\n Pr is %0.2f N  ",Pr);
