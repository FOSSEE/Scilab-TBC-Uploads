// sum 3-1
clc;
clear;
d=10;
l=1500;
m=12;
h=50;
E=210*10^3;
sigut=450;
A=%pi*d^2/4;
W=m*9.81;
sigi=W/A*(1+sqrt(1+(2*E*A*h)/(W*l)));
deli=sigi*l/E;
siggradual=W/A;
sigsudden=2*siggradual;

  // printing data in scilab o/p window
  printf("sigi is %f N/mm^2     ",sigi);
  printf("\n deli is %f mm     ",deli);
  printf("\n siggradual is %f N/mm^2     ",siggradual);

// The difference in the answer of sigi and siggradual is due to round-off errors.