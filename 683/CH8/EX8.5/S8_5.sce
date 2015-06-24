// sum 8-5A
clc;
clear;
Di=15;
Do=20;
d=2.3;
D=17.5;
C=D/d;
Ks=1+(0.5/C);
Wmax=100;
Tmax=Ks*8*Wmax*D/(%pi*(d^3));
G=81000;
delmax=67.7/2.366;
k=100/28;
Na=G*(d^4)/(8*k*(D^3));
Ls=Na+1; //(for plain ends)
delmax=28;
//TL= total working length
TL=Ls+delmax+(0.15*delmax);

  // printing data in scilab o/p window
  printf("d is %0.1fmm ",d);
  printf("\n C is %0.1f ",C);
   printf("\n Na is %0.1f ",Na);