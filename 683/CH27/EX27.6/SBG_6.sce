// sum 27-6
clc;
clear;
Dp=300;
rp=150;
//Let the angular velocity ratio be i
i=2/3;
rg=rp/i;
Dg=2*rg;
R=sqrt(rp^2+rg^2);
P=15000;
N=300;
Cs=1.5;
FOS=2;
sigb=100;
gamma1=atan(Dp/Dg);
gamma1=180/%pi*gamma1;
gamma2=(90-gamma1);
v=2*%pi*N*rp/(60*1000);
Cv=5.6/(5.6+sqrt(v));
Pt=P/v;
Peff=Pt*Cs/Cv;
Sb=Peff*FOS;
b=R/4;
//let x=m*Y
x=Sb/(b*sigb*(1-(b/R)));
m=6;

  // printing data in scilab o/p window
  printf("m*Y is %0.3f mm^2  ",x);
  printf("\n m is %0.0f mm  ",m);
