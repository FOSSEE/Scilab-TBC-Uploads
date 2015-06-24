// sum 28-2
clc;
clear;
Z1=1;
Z2=52;
q=10;
m=8;
i=Z2/Z1;
CD=((m*q)+(m*Z2))/2;
lambda=atan(Z1/q);
d=q*m;
da=m*(q+2);
df=m*(q+2-(4.4*cos(lambda)));
pa=m*%pi;
D=m*Z2;
Da=m*(Z2+(4*cos(lambda))-2);
Df=m*(Z2-2-(0.4*cos(lambda)));

  // printing data in scilab o/p window
  printf(" i is %0.0f   ",i);
  printf("\n CD is %0.0f mm  ",CD);
  printf("\n pa is %0.2f mm  ",pa);
  printf("\n da is %0.0f mm  ",da);
  printf("\n df is %0.3f mm  ",df);
  printf("\n Da is %0.3f mm  ",Da);
  printf("\n Df is %0.3f mm  ",Df);
