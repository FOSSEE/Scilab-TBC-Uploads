//sum 13-1
clc;
clear;
F=25*10^3;
sigat=50;
Ta=40;
pa=80;
d=sqrt((4*F)/(%pi*sigat));
d=26;
t=d/4;
t=7;
d1=1.2*d;
d1=32;
pc=F/(d1*t);
t=10;
c=0.75*d;
c=20;
d2=44;
tw=(d2-d1)/2;
b=F/(2*t*Ta);
b=34;
a=0.5*d;
d3=(F/(pa*t))+d1;
d3=64;
e=F/(Ta*(d3-d1));
d4=sqrt((F*4/(%pi*pa))+d1^2);
d4=40;
f=0.5*d;
sigbc=3*F*d3/(t*b^2*4);

  // printing data in scilab o/p window
  printf(" d is %0.0f mm     ",d);
  printf("\n d1 is %0.0f mm     ",d1);
  printf("\n d2 is %0.0f mm     ",d2);
  printf("\n d3 is %0.0f mm     ",d3);
  printf("\n d4 is %0.0f mm     ",d4);
  printf("\n sigbc is %0.1f MPa     ",sigbc);