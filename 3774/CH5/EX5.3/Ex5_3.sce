// exa 5.3 Pg 150
clc;clear;close;

// Given Data
n=6;// no. of rivets
P=54;// kN
e=200;//mm 
a=50;//mm (from fig.5.13(a))
b=100;//mm (from fig.5.13(a))
tau=120;// MPa

Pd=P/n*1000;// N (direct shear load in rivet)
C=P*e;// kN.mm (Couple)
//l1=l3=l4=l6
l1=sqrt(a**2+b**2);// mm
l3=l1;l4=l1;l6=l1//mm
l2=a;l5=a;//mm
// F1/l1*(4*l1**2+2*l2**2)=C
F1=C*1000/(4*l1**2+2*l2**2)*l1;// N
theta1=acos(a/l1);// radian
R1=sqrt(Pd**2+F1**2+2*Pd*F1*cos(theta1));// N (resultant force in rivet 1)
//R1=%pi/4*d0**2*tau
d0=sqrt(R1/(%pi/4*tau));// mm
printf('\n diameter of rivets = %.2f mm. Use d0 = 17.5 mm & d=16 mm for design.',d0)

