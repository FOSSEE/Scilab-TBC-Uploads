// sum 13-2
clc;
clear;
P=40*10^3;
sigut=490;
FOS=4;
sigts=sigut/FOS;
sigcs=1.4*sigts;
sigs=0.8*sigts;
d=sqrt((4*P)/(%pi*sigts));
d=21;
sigcc=1.4*330/4;
Tc=0.8*330/4;
t=d/3;
b=P/(2*t*Tc);
b=31;
t=10;
d1=28;
d2=40;
c=d/2;
c=15;
a=P/(2*(d2-d1)*98);
a=20;
L=(2*a)+(2*b)+(2*c)+(2*3);

  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d);
  printf("\n d1 is %0.0f mm     ",d1);
  printf("\n t is %0.0f mm     ",t);
  printf("\n b is %0.0f mm     ",b);
  printf("\n d2 is %0.0f mm     ",d2);
  printf("\n L is %0.0f mm     ",L);