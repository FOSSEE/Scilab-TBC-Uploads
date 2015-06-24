// sum 27-3
clc;
clear;
m=6;
Zp=30;
Zg=45;
dp=m*Zp;
rp=dp/2;
dg=m*Zg;
rg=dg/2;
R=sqrt(rg^2+rp^2);
gamma1=180/%pi*asin(rp/R);
gamma2=(90-gamma1);
ha=6;
hf=1.25*ha;
phi=180/%pi*atan(ha/R);
beta=180/%pi*atan(hf/R);
//let Face Cone Angle be FCA
FCA=(gamma1+phi);
//Let Root cone angle be RCA
RCA=(gamma1-beta);

  // printing data in scilab o/p window
  printf(" gamma1 is %0.1f deg  ",gamma1);
  printf("\n gamma2 is %0.1f deg  ",gamma2);
  printf("\n R  is %0.2f mm  ",R);
  printf("\n FCA  is %0.3f deg  ",FCA);
  printf("\n RCA  is %0.2f deg  ",RCA);
