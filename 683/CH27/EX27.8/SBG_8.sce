// sum 27-8
clc;
clear;
Zp=40;
Zg=60;
P=3500;
N=600;
Cs=1.5;
sigb=55;
gamma1=atan(Zp/Zg);
gamma1=180/%pi*gamma1;
gamma2=(90-gamma1);
a=cosd(gamma2);
Zp1=Zp/cosd(gamma1);
Zg1=Zg/a;
Q=(2*Zg1)/(Zp1+Zg1);
// Design is safe for m=6
m=6;
b=6*m;
dp=Zp*m;
rp=dp/2;
dg=Zg*m;
rg=dg/2;
R=sqrt(rp^2+rg^2);

  // printing data in scilab o/p window
  printf("m is %0.0f mm  ",m);
  printf("\n b is %0.0f mm  ",b);
  printf("\n R is %0.0f mm  ",R);
