// sum 24-4
clc;
clear;
sigut=1770;
Pb=0.0018*sigut;
W=4000;
a=2.5/2;
Ws=90*0.5;
Wa=(W+Ws)*a/9.81;
Weff=W+Wa;
d=sqrt(Weff*2/(23*Pb));
d=12;

  // printing data in scilab o/p window
  printf("d is %0.0f mm   ",d);
