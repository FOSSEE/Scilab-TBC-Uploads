// sum 4-2
clc;
clear;
d=25;
//Lower limit for hole is LLH
//Upper limit for hole is ULH
//Upper limit for shaft is ULS
//Lower limit for shaft is LLS
ULH=d+0.021;
LLH=d+0;
ULS=d+0.041;
LLS=d+0.028;
//Maximum interference is Cmax
//minimum interference is Cmin
Cmax=ULS-LLH;
Cmin=LLS-ULH;

  // printing data in scilab o/p window
  printf("Cmax is %0.3f mm ",Cmax);
  printf("\n Cmin is %0.3f mm ",Cmin);