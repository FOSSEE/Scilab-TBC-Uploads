// sum 27-5
clc;
clear;
Zp=20;
Zg=36;
m=4;
b=25;
BHN=360;
Np=750;
FOS=1.75;
dp=m*Zp;
rp=dp/2;
dg=m*Zg;
rg=dg/2;
gamma1=atan(dp/dg);
gamma1=180/%pi*gamma1;
gamma2=(90-gamma1);
a=cosd(gamma2);
Zp1=Zp/cosd(gamma1);
Zg1=Zg/a;
Q=(2*Zg1)/(Zp1+Zg1);
K=0.16*(BHN/100)^2;
R=sqrt(rp^2+rg^2);
Y=0.33+0.003*0.86;
sigut=600;
sigb=sigut/3;
Sb=m*b*Y*sigb*(1-(b/R));
Sw=0.75*b*dp*Q*K/cosd(gamma1);

  // printing data in scilab o/p window
  printf("Sb is %0.0f N   ",Sb);
  printf("\n Sw is %0.1f N  ",Sw);

//The answwer to Sb is calculated incorrectly in the book.
