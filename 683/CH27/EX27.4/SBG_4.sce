// sum 27-4
clc;
clear;
alpha=20*%pi/180;
Zp=25;
Zg=40;
m=5;
b=30;
BHN=400;
dp=m*Zp;
rp=dp/2;
dg=m*Zg;
rg=dg/2;
gamma1=atan(rp/rg);
gamma1=180/%pi*gamma1;
gamma2=(90-gamma1);
a=cosd(gamma2);
Zp1=Zp/cos(gamma1);
Zg1=Zg/a;
Q=(2*Zg1)/(Zp1+Zg1);
K=0.16*(BHN/100)^2;
Sw=0.75*b*dp*Q*K/cosd(gamma1);

  // printing data in scilab o/p window
  printf("Sw is %0.1f N  ",Sw);
  
  //The difference in the value of Sw is due to rounding-off of the value of Q.

