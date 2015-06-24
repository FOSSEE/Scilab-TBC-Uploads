// sum 23-6
clc;
clear;
T=35000;
u=0.4;
p=0.7;
r=200;
N=T/(u*r)
b=sqrt(N/p);
l=b;
//2theta = theta2
theta2=2*asin(l/(2*r));
F=u*N;
P=((250*N)-(u*N*80))/550;
Ry=N-P;
Rx=u*N;
R=sqrt(Rx^2+Ry^2);
w=2*%pi*100/60;
// Rate of heat generated is Q
Q=u*N*w*r/1000;

  // printing data in scilab o/p window
  printf("N is %0.1f N ",N);
  printf("\n b is %0.0f mm ",b);
  printf("\n P is %0.1f N ",P);
  printf("\n R is %0.2f N ",R);
  printf("\n Q is %0.2f J/s ",Q);

//The answer to Rate of heat generated 'Q' is calculated incorrectly in the book.
