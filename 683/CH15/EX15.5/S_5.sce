// sum 15-5
clc;
clear;
d=200;
r=d/2;
N=300;
P=5000;
D=500;
R=D/2;
u=0.3;
E=205*10^3;
G=84*10^3;
Ta=60;
Kb=1.5;
Kt=2;
w=2*%pi*N/60;
beta1=20*%pi/180;
V=r*w;
v=R*w;
// Let T1-T2 =T
T=P/V;
x=u*%pi/sin(beta1);
T2=T/((exp(x)-1));
T1=T2*exp(x);
t=P/v;
y=u*%pi;
T3=t/((exp(x)-1));
T4=T3*exp(x);
T=P/w;
Rc=2612;;
RA=645.1;
MB=96.76;
MC=-208.96;
d=16*10^3*sqrt((Kb*MC)^2+(Kt*T)^2)/(%pi*Ta);
d=d^(1/3);
l=380;
J=%pi*d^4/32;
theta=T*10^3*l/(G*J);
theta=theta*180/%pi;

  // printing data in scilab o/p window
  printf("d is %0.1f mm    ",d);
  printf("\n theta is %0.2f deg    ",theta);