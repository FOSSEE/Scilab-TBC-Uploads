// sum 23-2
clc;
clear;
b=80;
t=2;
theta=225*%pi/180;
u=0.22;
//F1/F2=e^(u*theta)
//let F1/F2=x;
x=exp(u*theta);
//maximum tensile stress in steel tape is siga
siga=60;
A=b*t;
F1=siga*A;
F2=F1/x;
r=0.2;
T=(F1-F2)*r;
OA=30;
OB=100;
OC=350;
P=((F2*OB)+(F1*OA))/OC;
OA=F2*OB/F1;

  // printing data in scilab o/p window
  printf("F1 is %0.0f N ",F1);
  printf("\n F2 is %0.1f N ",F2);
  printf("\n T is %0.2f Nm ",T);
  printf("\n OA is %0.2f mm ",OA);
  
