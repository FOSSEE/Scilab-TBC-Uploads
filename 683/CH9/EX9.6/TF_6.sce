// sum 9-6
clc;
clear;
d=20;
sigp=600;
At=245;
Pi=120*10^3;
Pe=30*10^3;
C=0.35;
Pb=C*Pe;
P=Pi+Pb;
sigi=Pi/At;
sigf=P/At;
K=0.18;
T=K*d*Pi*10^-3;
E1=sigi/sigp;
E2=sigf/sigp;

  // printing data in scilab o/p window
  printf("sigi is %0.1f MPa     ",sigi);
  printf("\n sigi is %0.2f MPa     ",sigf);
  printf("\n T is %0.0f Nm     ",T);
  printf("\n E1 is %0.3f      ",E1);
  printf("\n E2 is %0.3f      ",E2);
  
  //Value upto tenthth place is considered in the book for value of final stress in bolt, 'sigf'