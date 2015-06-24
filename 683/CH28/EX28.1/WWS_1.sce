// sum 28-1
clc;
clear;
Z1=1;
Z2=30;
q=10;
m=5;
d=q*m;
D=m*Z2;
//let the speed reduction ratio be G
G=Z2/Z1;
CD=(d+D)/2;

  // printing data in scilab o/p window
  printf("G is %0.0f   ",G);
  printf("\n CD is %0.0f mm  ",CD);
  printf("\n d  is %0.0f mm  ",d);
  printf("\n D  is %0.0f mm  ",D);
