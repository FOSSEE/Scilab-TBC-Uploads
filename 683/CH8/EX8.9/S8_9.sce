// sum 8-9
clc;
clear;
// for music wire
d1=11.5;
A=2211;
d=1.5;
m=0.145;
sigut=A/(d^m);
sigy=0.78*sigut;
Do=16;
E=2*(10^5);
Nb=4.25;
D=Do-d;
C=D/d;
Ki=((4*(C^2))-C-1)/(4*C*(C-1));
Mmax=(sigy*%pi*(d^3))/(32*Ki);
kc=((d^4)*E)/(10.8*D*Nb);
theta3=Mmax/kc';
l1=20;
l2=20;
Ne=(l1+l2)/(3*%pi*D);
Na=Nb+Ne;
k=((d^4)*E)/(10.8*Na*D);
thetat=Mmax/k';
ke=(3*%pi*(d^4)*E)/(10.8*(l1+l2));
// angdisp=theta1+theta2=Mmax/ke;
angdisp=Mmax/ke;
//D1 is final coil diameter
D1=(Nb*D)/(Nb+theta3);
//IRC=Initial radial clearance
IRC=((D-d)-d1)/2;
//FRC=Final radial clearance
FRC=((D1-d)-d1)/2;


 // printing data in scilab o/p window
 printf("Maximum Torque is %0.2f Nmm ",Mmax);
 printf("\n theta3 is %0.3f turns ",theta3);
 printf("\n Ne is %0.3f turns ",Ne);
 printf("\n ke is %0.1f N/mm ",ke);
 printf("\n theta1+theta2 is %0.4f turns ",angdisp);
 printf("\n D1 is %0.2f mm ",D1);
 printf("\n IRC is %0.2f mm ",IRC);
 printf("\n FRC is %0.2f mm ",FRC);
 