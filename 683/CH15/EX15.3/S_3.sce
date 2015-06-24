// sum 15-3
clc;
clear;
P=16*746;
N=3000;
w=2*%pi*N/60;
T=P/w*10^3;
sigy=400;
Ty=sigy/2;
FOS=2;
Ta=Ty/FOS;
d=T*16/(%pi*Ta);
d1=d^(1/3);
r=3;
D=d1+(2*r);
SCF=1.196
Tys=Ta/SCF;
d=T*16/(%pi*Tys);
d2=d^(1/3);
d=14;
D=d+(2*r);

  // printing data in scilab o/p window
  printf("d1 is %0.2f mm    ",d1);
  printf("\n d2 is %0.2f mm    ",d2);
  