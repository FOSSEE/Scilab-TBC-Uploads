// sum 27-7
clc;
clear;
Zp=24;
Zg=36;
N=1400;
P=11600;
Cs=1.4;
FOS=2;
sigut=600;
sigb=sigut/3;
gamma1=atan(Zp/Zg);
gamma1=180/%pi*gamma1;
gamma2=(90-gamma1);
a=cosd(gamma2);
Zp1=Zp/cosd(gamma1);
Zg1=Zg/a;
Q=(2*Zg1)/(Zp1+Zg1);
v=1.76;
Pt=P/v;
Cv=5.6/(5.6+sqrt(v));
Peff=Pt*Cs/Cv;
x=Peff*FOS;
Y=0.352+(0.003*0.85);
y=2*sigb*Y*(1-(6/21.63));
m=sqrt(x/y);
// Design is safe for m=4
m=4;
b=6*m;
dp=24*m;
rp=48;
dp=dp/cosd(gamma1);
v=2*%pi*N*rp/(60*1000);
Cv=5.6/(5.6+sqrt(v));
Sb=y*m^2;
//Sw=Sb;
K=Sb/(0.75*b*dp*Q);
BHN=sqrt(K/0.16)*100;

  // printing data in scilab o/p window
  printf("m is %0.0f mm  ",m);
  printf("\n BHN is %0.0f   ",BHN);
  
  //The answwer to BHN is calculated incorrectly in the book.
