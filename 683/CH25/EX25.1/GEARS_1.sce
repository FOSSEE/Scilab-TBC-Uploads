// sum 25-1
clc;
clear;
Zp=25;
Zg=60;
m=5;
dp=m*Zp;
dg=m*Zg;
CD=(dp+dg)/2;
ha=m;
hf=1.25*m;
c=hf-ha;
r=0.4*m;

  // printing data in scilab o/p window
  printf("dp is %0.0f mm  ",dp);
  printf("\n dg is %0.0f mm  ",dg);
  printf("\n CD is %0.1f mm   ",CD);
  printf("\n ha is %0.0f mm   ",ha);
  printf("\n hf is %0.2f mm   ",hf);
  printf("\n c is %0.2f mm   ",c);
  printf("\n r is %0.0f mm   ",r);
