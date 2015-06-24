// sum 3-26
clc;
clear;
Q=4*10^3;
P=8*10^3;
sig=P;
T=Q;
p1=(sig/2+sqrt((sig/2)^2+T^2));
p2=(sig/2-sqrt((sig/2)^2+T^2));
sigyp=285;
FOS=3;
siga=sigyp/3;
A1=p1/siga;
d1=sqrt(4*A1/%pi);
A2=(p1-p2)*2/(siga*2);
d2=sqrt(4*A2/%pi);
v=0.3;
A3=sqrt(p1^2+p2^2-(2*v*p1*p2))/siga;
d3=sqrt(4*A3/%pi);

  // printing data in scilab o/p window
  printf("d1 is %0.2f mm    ",d1);
  printf("\n d2 is %0.1f mm    ",d2);
  printf("\n d3 is %0.2f mm    ",d3);