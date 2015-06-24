// sum 3-19
clc;
clear;
x1=((13*3*1.5)+(2*15*8))/(39+30);
x2=13-x1;
A=30+39;
E=2*10^7;
Iyy=995.66;
e=54.32;
x=x2-3;
sigb=e*x/Iyy;
sigd=1/69;
sigr=sigd+sigb;
//Let the strain be E1
E1=800*10^-6;
P=E1*E/sigr;
P=P*10^-3;

  // printing data in scilab o/p window
  printf("P is %0.2f kN    ",P);