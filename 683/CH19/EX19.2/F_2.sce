// sum 19-2
clc;
clear;
N=350;
theta1=asin(sqrt((3-0.6)/4));
theta1=theta1*180/%pi;
theta2=(180)-theta1;
//Ti=16000+6000*sind(3*theta);
//To=16000+3600*sind(theta);
a=-3600*(cosd(theta2)-cosd(theta1));
b=2000*(cosd(3*theta2)-cosd(3*theta1));
c=a+b;
delU=c;
Ks=0.05;
w=2*%pi*N/60;
I=delU/(Ks*w^2);
V=25;
Ir=I*0.95;
R=V/w;
Mr=Ir/R^2;
rho=7150;
t=sqrt(Mr*(10^6)/(2*%pi*R*2*rho));
b=2*t;

  // printing data in scilab o/p window
  printf("t is %0.2f mm    ",t);
  printf("\n b is %0.2f mm    ",b);
  printf("\n R is %0.3f m    ",R);