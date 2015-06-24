// sum 3-17
clc;
clear;
A=(12*2)+(12*2)+(30-4);
B=sqrt(A/2);
D=2*B;
B1=12;
D1=30;
d=26;
b=1;
Z1=((B1*D1^3)-((B1-b)*d^3))/(B1*D1/2);
Zr=B*D^2/6;
//Let the ratio of both the sections be x
x=Z1/Zr;
M=30*10^6;
sigmax=M/(Z1*10^3);

  // printing data in scilab o/p window
  printf("Z1/Zr is %0.2f     ",x);
  printf("\n sigmax is %0.2f N/mm^2    ",sigmax);