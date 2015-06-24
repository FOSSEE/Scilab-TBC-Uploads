// sum 6-2
clc;
clear;
d1=80;
p=0.981;
Ta=40;
siga=80;
pa=15;
W=%pi*(d1^2)*p/4;
P=W/8;
Ws=W-P;
d=sqrt(W*4/(%pi*2*Ta));
l=1.5*d;
D=2*d;
T=W/(2*%pi*pa^2/4);
M1=P*(700-87.5-(D/2));
h=50;
b=h/4;
Z=b*h^2/6;
sigb=M1/Z;
pmax=80;
T=2465.6/h^2;
pmax=(sigb/2)+sqrt((sigb/2)^2+T^2);

  // printing data in scilab o/p window
  printf("h is %0.2f mm     ",h);
  printf("\n pmax is %0.2f MPa     ",pmax);
  
  //The difference in the value of pmax is due to rounding-off the digits.
