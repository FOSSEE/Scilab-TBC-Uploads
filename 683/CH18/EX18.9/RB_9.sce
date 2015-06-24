// sum 18-9
clc;
clear;
P1=3000;
P2=4000;
P3=5000;
N1=1440;
N2=1080;
N3=720;
t1=1/4;
t2=1/2;
t3=1/4;
n1=N1*t1;
n2=N2*t2;
n3=N3*t3;
N=(n1+n2+n3);
Pe=(((n1*P1^3)+(n2*P2^3)+(n3*P3^3))/N)^(1/3);
Lh=10*10^3;
L=Lh*60*N/10^6;
C=Pe*L^(1/3);

  // printing data in scilab o/p window
  printf("C is %0.0f N    ",C);
  
  //The difference in the value of C is due to rounding-off of value of Pe