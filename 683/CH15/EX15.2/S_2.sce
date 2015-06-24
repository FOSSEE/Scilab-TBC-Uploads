// sum 15-2
clc;
clear;
dA=150;
dB=250;
alpha=20*%pi/180;
W=400;
sigyt=400;
sigut=500;
Kb=1.5;
Kt=2;
T=W*dA/2;
Pt=T/(dB/2);
Pr1=W*tan(alpha);
Pr2=Pt*tan(alpha);
RDH=((W*120)-(Pt*320))/440;
RcH=W-RDH-Pt;
//RcH=400+65.5-240;
McH=0;
MAH=RcH*120;
MBH=RDH*120;
RDV=((Pr1*120)-(Pr2*320))/440;
RcV=Pr1-RDV-Pr2;
MAV=RcV*120;
MBV=RDV*120;
Mmax=sqrt((MAH^2)+(MAV^2));
T=30*10^3;
Ta=0.135*sigut;
d=16*sqrt((Kb*Mmax)^2+(Kt*T)^2)/(%pi*Ta);
d=d^(1/3);

  // printing data in scilab o/p window
  printf("d is %0.2f mm    ",d);
  