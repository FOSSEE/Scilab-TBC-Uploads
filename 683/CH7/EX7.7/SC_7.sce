// sum 7-7
clc;
clear;
D=500;
p=0.3;
E=208*10^3;
sigc=320;
a=1/7500;
l=2000;
le=l/2;
W=%pi*D^2*p/4;
FOS=4;
Wd=W*FOS;
I=Wd*l^2/(%pi^2*E);
d=(64*I/%pi)^(1/4);
A=%pi*d^2/4;
k=d/4;
d=45; //Rounding off to nearest whole number

  // printing data in scilab o/p window
  printf("d is %0.1f mm     ",d);