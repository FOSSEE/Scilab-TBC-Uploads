// sum 14-1
clc;
clear;
d=40;
r=d/2;
P=6*10^3;
N=350;
sigyt=380;
A=%pi*12^2/2;
theta=%pi-(2*atan(4/12));
alpha=180-(theta*%pi/180);
l=2*12*cosd(19.5);
A1=l*4/2;
Abcd=(A*141/180)-A1;
A2=A-Abcd;
A3=8*l;
w=2*%pi*N/60;
T=P/w;
Pt=T*10^3/r;
sigb=Pt/A2;
//Let shear stress developed in key Tk
Tk=Pt/A3;
FOS1=sigyt/sigb;
FOS2=0.577*sigyt/Tk;

  // printing data in scilab o/p window
  printf("FOS1 is %0.3f     ",FOS1);
  printf("\n FOS2 is %0.2f     ",FOS2);