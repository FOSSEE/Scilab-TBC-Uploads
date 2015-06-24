// sum 6-3
clc;
clear;
P=((4*360)+(2*360))/900;
Fv=4-2;
Fh=P;
Fr=sqrt(Fv^2+Fh^2);
P1=4*0.36/0.9;
Rf=sqrt(4^2+1.6^2);
d=sqrt(Rf*10^3/(15*1.25));
d=16;
l=1.25*d;
T=Rf*10^3*4/(2*%pi*d^2);
D=2*d;
M1=Rf*10^3*(360-(D/2));
pa=15;
h=80;
b=h/4;
Z=b*h^2/6;
sigb=M1/Z;
T=4310/(b*h);
pmax=(sigb/2)+sqrt((sigb/2)^2+T^2);

  // printing data in scilab o/p window
  printf("P is %0.1f KN     ",P);
  printf("\n pmax is %0.2f MPa     ",pmax);