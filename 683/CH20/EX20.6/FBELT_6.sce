// sum 20-6
clc;
clear;
i=2.5;
C=4500;
N=960;
P=20*10^3;
Ks=1.15;
Kf=1.10;
t=8;
//let weight density be w
w=0.110*10^5;
m=w*t/10^6;
Fa=8.75;
d=200;
D=i*d;
u=0.4;
V=2*%pi*N*d/(2*60*1000);
Pd=P*Ks*Kf;
Cp=1;
Cv=0.6;
//to find b
T1=Fa*t*Cp*Cv;
Tc=m*V^2/9.81;
theta=180-(2*asind((D-d)/(2*C)));
theta=theta*%pi/180;
x=u*theta;
T2=Tc+((T1-Tc)/exp(x));
T=Pd/V;
b=T/(T1-T2);
//b=90;
L=sqrt((4*C^2)-(D+d)^2)+(theta*(D+d)/2);
L=L*10^-3;

  // printing data in scilab o/p window
  printf("V is %0.2f m/s ",V)
  printf("\n b is %0.3f mm ",b)
  printf("\n L is %0.3f m ",L);
  