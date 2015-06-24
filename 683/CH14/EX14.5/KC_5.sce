// sum 14-5
clc;
clear;
P=36*10^3;
N=200;
w=2*%pi*N/60;
T=P/w;
Tas=45;
d=16*T*10^3/(%pi*Tas);
d=d^(1/3);
d=60;
d1=(2*d)+13;
l=3.5*d;
Ftk=T*2/d;
lk=l/2;
Tak=40;
sigack=90;
b=Ftk*10^3/(lk*Tak);
t=2*Ftk*10^3/(sigack*lk);
n=4;
sigatb=60;
u=0.25;
dr=16*T*10^3/(u*%pi^2*sigatb*n*d);
dr=sqrt(dr);

  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d);
  printf("\n b is %0.1f mm     ",b);
  printf("\n t is %0.0f mm     ",t);
  printf("\n dr is %0.3f mm     ",dr);