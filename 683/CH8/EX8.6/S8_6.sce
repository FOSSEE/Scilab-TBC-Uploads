// sum 8-6
clc;
clear;
// 18 SWG=1.219MM in dia
d=1.219;
E=198.6*10^3;
G=80.7*10^3;
m=0.19;
A=1783;
sig=A/(d^m);
Tys=(0.4*sig);
Do=12.5;
D=Do-d;
C=D/d;
Ks=((2*C)+1)/(2*C);
W=(Tys*%pi*(d^3))/(8*D*Ks);
Nt=13.5;
Na=Nt-2;
del=(8*W*(D^3)*Na)/(G*(d^4));
Ls=(Nt-1)*d;
Lo=Ls+del+(0.15*del);

  // printing data in scilab o/p window
  printf("Tys is %0.1f MPa ",Tys);
  printf("\n W is %0.1f N ",W);
  printf("\n del is %0.3f mm ",del);
  printf("\n Ls is %0.4f mm ",Ls);
  printf("\n Lo is %0.2f mm ",Lo);
  
  //Answers in the book for Torsional yeild strength have been rounded-off to the nearest whole number.