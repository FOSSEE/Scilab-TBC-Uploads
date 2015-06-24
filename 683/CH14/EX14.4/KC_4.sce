// sum 14-4
clc;
clear;
N=300;
w=2*%pi*N/60;
P=12*10^3;
Ks=1.25;
Pd=P*Ks;
T=Pd/w;
Tas=50;
d=16*T*10^3/(%pi*Tas);
d=d^(1/3);
d=40;
Ts=10;
d1=(2*d)+13;
x=(d1^4-d^4)/d1;
//Let the shear stress in the key be Tsh
Tsh=T*10^3*16/(%pi*x);
l=3.5*d;
Ft=T*2*10^3/d;
l1=70;
sigak=50;
b=Ft/(l1*sigak);
t=2*Ft/(100*l1);

  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d);
  printf("\n Tsh is %0.2f MPa     ",Tsh);
  printf("\n b is %0.0f mm     ",b);
  printf("\n t is %0.0f mm     ",t);