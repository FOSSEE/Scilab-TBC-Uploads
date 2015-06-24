// sum 30-5
clc;
clear;
G=2;
P=5000;
Ks=1.7;
Pd=P*Ks;
K2=1.7;
p=15.88;
n1=17;
n2=n1*G;
D1=n1*p;
D2=n2*p;
C=40*p;
Ln=(2*C/p)+((n1+n2)/2)+((((n2-n1)/(2*%pi))^2)*(p/C));
L=Ln*p;

  // printing data in scilab o/p window
  printf("L is %0.2f mm  ",L);
//The difference in the value of L is due to rounding-off the values.
