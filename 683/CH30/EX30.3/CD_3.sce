// sum 30-3
clc;
clear;
N1=1000;
N2=500;
P=2.03*10^3; //from table 30-8
K1=1.26;
Ks=1;
//let Pc be the power transmitting capacity of the chain
Pc=P*K1/Ks;
p=9.52;
n1=21;
n2=42;
V=n1*p*N1/(60*10^3);
//Let the chain tension be T
T=Pc/V;
//Let the breaking load be BL
BL=10700;
FOS=BL/T;
C=50*p;
Ln=(2*C/p)+((n1+n2)/2)+((((n2-n1)/(2*%pi))^2)*(p/C));
L=Ln*p;
Pc=Pc*10^-3;

  // printing data in scilab o/p window
  printf("Pc is %0.2f KW  ",Pc);
  printf("\n V is %0.3f m/s  ",V);
  printf("\n T is %0.1f N  ",T);
  printf("\n FOS is %0.2f   ",FOS);
  printf("\n L is %0.2f mm  ",L);

//The difference in the value of L and T is due to rounding-off the values.
