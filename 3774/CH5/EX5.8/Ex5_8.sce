// exa 5.8 Pg 156
clc;clear;close;

// Given Data
P=20;// kN
e=80;//mm
tau=150;// MPa


Pd=P/4;// kN
C=P*e;// kN.mm (Couple)
// As C.G. lies at 45mm from top rivet
l1=45;l4=45;//mm 
l2=15;l3=15;//mm
//(F1/l1)*(2*l1*l4+2*l2*l3) = C
F1= C*1000/(2*l1*l4+2*l2*l3)*l1;//N
R1=sqrt(Pd**2+F1**2);// N
//R1=%pi/4*d0**2*tau
d0=sqrt(R1/(%pi/4*tau));//mm
printf('Diameter of rivets - \n d0 = %.3f mm',d0)
printf('\n Use d0 = 13.5 mm & d = 12 mm')
