// sum 20-2
clc;
clear;
P=12*10^3;
d=0.2;
D=0.5;
C=2;
sigmax=2*10^6;
t=8*10^-3;
//Let density be rho
rho=950;
u=0.38;
N=1500;
//Let angle of contact = thetad
thetad=180-(2*asind((D-d)/(2*C)));
thetad=thetad*%pi/180;
thetaD=(2*%pi)-thetad;
v=(2*%pi*N*d)/(60*2);
//Let T1-T2=T
T=P/v;
x=exp(u*thetad);
b=(T*x)/((1-x)*t*((rho*v^2)-(sigmax)));
b=b*10^3;
//Let breadth of the pulley be b1
b1=b*10^3+13; //Table 20-3
L=sqrt((4*C^2)-(C*(D-d)^2))+((D*thetaD)+(d*thetad))/2;
// Let pulley crown for d=h1, D=h2
h1=0.6;  //Table 20-4
h2=1;

  // printing data in scilab o/p window
  printf("b is %0.2f mm ",b)
  printf("\n L is %0.2f m ",L)
  printf("\n b1 is %0.2f mm ",b1);
  printf("\n h1 is %0.1f mm ",h1);
  printf("\n h2 is %0.1f mm ",h2);
 