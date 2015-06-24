// sum 15-6
clc;
clear;
T=400;
Pt=4800;
Pg=3600;
sigyt=360;
E=205*10^3;
G=80*10^3;
Kb=2;
Kt=1.5;
FOS=3;
RC=((Pt*90)+(Pg*200))/140;
RA=8400-RC;
MB=RA*0.9;
MC=Pg*0.045;
Te=sqrt((Kb*MC)^2+(Kt*T)^2);
Ta=0.577*sigyt/FOS;
d=16*10^3*Te/(%pi*Ta);
d=d^(1/3);
L=110;
J=%pi*d^4/32;
T=400;
theta=T*10^3*L/(G*J);
theta=theta*180/%pi;

  // printing data in scilab o/p window
  printf("d is %0.0f mm    ",d);
  printf("\n theta is %0.4f deg    ",theta);