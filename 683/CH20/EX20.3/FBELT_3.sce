// sum 20-3
clc;
clear;
P=11;
N=1440;
n=480;
C=2.4;
//Let power transmitte dfrom high speed belt =P1
P1=0.0118;
V=5;
Ks=1.2;
v=15;
d=v*10^3*60/(2*%pi*N);
d=0.2;
D=N/n*d;
//Let angle of contact =thetaA
thetaA=180-(2*asind((D-d)/(2*C)));
thetaA=thetaA*%pi/180;
v=(2*%pi*N*d)/(60*2);
//Let the arc of contact correction factor be Ka
Ka=1.05;
Pd=P*Ka*Ks;
//Let corrected load rating=Pc
Pc=P1*v/V;
b=Pd/(Pc*4);
thetaB=(2*%pi)-thetaA;
L=sqrt((4*C^2)-((D-d)^2))+((d*thetaA/2)+(D*thetaB)/2);


  // printing data in scilab o/p window
  printf("v is %0.2f m/s ",v)
  printf("\n b is %0.3f mm ",b)
  printf("\n L is %0.4f m ",L);
