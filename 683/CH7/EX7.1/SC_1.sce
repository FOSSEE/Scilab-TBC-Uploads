// sum 7-1
clc;
clear;
sigc=550;
FOS=4;
sigw=sigc/FOS;
l=4000;
le=l/2;
A=%pi*(1-0.7^2)/4;
K=(1+0.7^2)/16;
Pr=800*10^3;
a=1/1600;
D=130; //Rounding off to nearest whole number
d=D*0.7;

  // printing data in scilab o/p window
  printf("D is %0.1f mm     ",D);
  printf("\n d is %0.1f mm     ",d);