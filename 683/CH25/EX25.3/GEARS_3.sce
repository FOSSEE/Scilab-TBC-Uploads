// sum 25-3
clc;
clear;
Zp=30;
N=1000;
Zg=75;
m=5;
b=60;
sigut=450;
BHN=350;
Cs=1.5;
FOS=2;
dp=m*Zp;
dg=m*Zg;
v=2*%pi*N*dp/(60*1000*2);
Cv=3/(3+v);
sigb=450/3;
Y=0.358;
Sb=m*b*sigb*Y;
Q=(2*Zg)/(Zp+Zg);
K=0.16*(BHN/100)^2;
Sw=b*dp*Q*K;
Pt=Sb*Cv/(Cs*FOS);
P=Pt*v;
P=P*10^-3;

  // printing data in scilab o/p window
  printf("Sb is %0.0f N   ",Sb);
  printf("\n Sw is %0.0f N  ",Sw);
  printf("\n P is %0.3f kW  ",P);

//The difference in the value of Sw is due to rounding-off of the value of Q.
