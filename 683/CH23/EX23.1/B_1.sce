// sum 23-1
clc;
clear;
W=20e3;
m=W/9.81;
//diameter of brake drum
Db=0.6;
p=1;
Vi=1;
Vf=0;
D=1;
R=0.5;
wi=Vi/R;
wf=0;
w=1;
Vav=0.5;
S=2;
t=S/Vav;
//angle turned by by hoist drum=theta
theta=0.5*wi*t;
K.E=0.5*m*Vi^2;
P.E=2*W;
T.E=K.E+P.E;
T=T.E/theta;
P=wi*T*10^-3;
Rb=Db/2;
Ft=0.5*T*p/Rb;
u=0.35;
N=Ft/u;
//contact area of brake lining=A
A=N/p;
b=0.3*Db;
L=A*10^-6/(b);
//angle subtended at brake drum centre=theta2
theta2=2*(asin(L/Db));
theta2=theta2*180/%pi; // converting radian to degree

  // printing data in scilab o/p window
  printf("T is %0.1f Nm ",T);
  printf("\n P is %0.4f kW ",P);
  printf("\n b is %0.2f m ",b);
  printf("\n L is %0.3f m ",L);
  printf("\n theta2 is %0.0f deg ",theta2);
 



