// sum 21-4
clc;
clear;
P=12*10^3;
Ks=1.1;
Pd=12*10^3*Ks;
N=1440;
B=17;
t=11;
d=200;
i=3;
D=i*d;
C=1000;
// since angle of contact theta is very small
theta=(D-d)/C;
theta=theta*180/%pi;
Kc=0.8;
Lp=(2*C)+(%pi/2*(D+d))+(((D-d)^2)/(4*C));
Li=Lp-45;
Ki=1.1;
//let number of v-belts required = n
//let the KW rating be KWR
KWR=5.23;
n=(P*Ks)/(KWR*Ks*Ki*10^3);
n=3;

  // printing data in scilab o/p window
  printf("D is %0.1f mm ",D);
  printf("\n C is %0.1f mm ",C);
  printf("\n n is %0.3f ",n);
  printf("\n Li is %0.0f mm ",Li)