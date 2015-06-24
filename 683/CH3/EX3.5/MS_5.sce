// sum 3-5
clc;
clear;
p=2.4;
//Let axial movement of nut be La
La=p*45/360;
d=20;
D=30;
L=500;
d1=18;
As=%pi*d1^2/4;
Ac=%pi*(D^2-d^2)/4;
sigt=120/(3.543);
sigb=1.543*sigt;

  // printing data in scilab o/p window
  printf("sigt is %f N/mm^2     ",sigt);
  printf("\n sigb is %f N/mm^2     ",sigb);