// sum 16-8
clc;
clear;
FOS=3;
sigut=380;
Ta=0.577*sigut/FOS;
d=25;
Tus=460;
Ps=%pi*d*Tus;
siga=127;
dr=sqrt(Ps*4/(%pi*siga));
d=30;
p=6;
dr=d-p;
dm=d-(p/2);
u1=0.15;
alpha=atan(p*2/(%pi*dm));
phi=atan(u1);
T=Ps*dm*tan(alpha+phi)/2;
T1=16*T/(%pi*dr^3);
sigc=4*Ps/(%pi*dr^2);
sigmax=sigc/2+sqrt((sigc/2^2)+(T1^2));
Tmax=sqrt((sigc/2^2)+(T1^2));
n=tan(alpha)/tan(alpha+phi);
Uo=Ps/2;
Ui=Uo/n;
wav=%pi/2;
wmax=2*wav;
I=Ui*2/wmax^2;
k=0.4;
Ir=0.9*I*10^-3;
m=Ir/k^2;
R=0.4;
rho=7200;
a=sqrt(m/(2*%pi*R*rho));
T=T*10^-3;

  // printing data in scilab o/p window
  printf("T is %0.3f Nm     ",T);
  printf("\n n is %0.4f      ",n);
  printf("\n a is %0.5f mm      ",a);
  
  //The difference in the answers of T is due to rounding-off of values.


