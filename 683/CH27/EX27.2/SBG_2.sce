// sum 27-2
clc;
clear;
alpha=20*%pi/180;
Zp=20;
Zg=36;
m=4;
sigut=600;
b=25;
dp=m*Zp;
rp=dp/2;
dg=m*Zg;
rg=dg/2;
gamma1=atan(rp/rg);
Zpv=Zp/cos(gamma1);
Y=0.33+0.003*0.88;
sigb=sigut/3;
Sb=m*b*sigb*Y;

  // printing data in scilab o/p window
  printf("Zpv is %0.2f   ",Zpv);
  printf("\n Sb is %0.0f N  ",Sb);
