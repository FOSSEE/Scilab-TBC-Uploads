// sum 15-4
clc;
clear;
P1=24*10^3;
P2=10*10^3;
sigyt=460;
Tya=sigyt*0.3;
SCF=2.84;
Ta=Tya/SCF;
N=400;
w=2*%pi*N/60;
T1=P1/w;
T2=P2/w;
d1=T1*16*10^3/(%pi*Ta);
d1=d1^(1/3);
d2=T2*16*10^3/(%pi*Ta);
d2=d2^(1/3);
theta1=%pi/3600;
l1=120;
G=84*10^3;
d3=T1*10^3*l1*32/(%pi*G*theta1);
d3=d3^(1/4);
d4=T2*l1*10^3*32/(%pi*G*theta1);
d4=d4^(1/4);

  // printing data in scilab o/p window
  printf("d1 is %0.2f mm    ",d1);
  printf("\n d2 is %0.2f mm    ",d2);
  printf("\n d3 is %0.1f mm    ",d3);
  printf("\n d4 is %0.2f mm    ",d4);