// sum 6-5
clc;
clear;
l2=300;
l=450;
P=400;
Mx=2*P*l2/3;
siga=80;
dh=(Mx*32/(%pi*siga))^(1/3);
dh=22;
L=(2*l2/3)+l;
T=P*L;
Ta=40;
d=(T*16/(%pi*Ta))^(1/3);
d=35;
d1=1.6*d;
Th=T*16*d1/(%pi*(d1^4-d^4));
l1=1.5*d;
My=P*(L-(d1/2));
B=dh;
H=sqrt(3.66*75);
H=30;
Mz=P*l1/2;
Te=sqrt(T^2+Mz^2);
d2=(Te*16/(%pi*Ta))^(1/3);
d2=32;
b=d/4;
b=9; //Rounding off to nearest whole number
t=d/6;
t=6; //Rounding off to nearest whole number

  // printing data in scilab o/p window
  printf("d is %0.1f  mm     ",d);
  printf("\n dh is %0.1f mm     ",dh);
  printf("\n d1 is %0.1f mm     ",d1);
  printf("\n l1 is %0.1f mm     ",l1);
  printf("\n d2 is %0.1f mm     ",d2);
  printf("\n b  is %0.1f  mm     ",b);
  printf("\n t  is %0.1f  mm     ",t);
  