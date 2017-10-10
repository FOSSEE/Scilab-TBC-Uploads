//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_2.sce

clc;
clear;
T1=120;
T2=24;
R2=0.013;
X2=0.048;
V=400;
kd=0.96;
kp=1.0;
f=50;

printf("\n (a)")
phi=V/(4.44*kd*kp*f*T1);
printf("\n  The flux per pole=%1.6f Wb \n",phi)

printf("\n (b)")
E2=4.44*kd*kp*phi*f*T2;
printf("\n  The rotor emf induced at standstill on open circuit=%d V \n",E2)

printf("\n (c)")
s=0.04;
Er=s*E2;
printf("\n  Rotor emf at a slip=%1.1f V",Er)
Ir=Er/sqrt(R2^2+(s*X2)^2);
printf("\n  The rotor current=%3.2f A \n",Ir)

printf("\n (d)\t(i)")
s=0.04;
phir=atand(s*(X2/R2));
printf("\n  The phase difference between rotor emf and current for 4 percentage slip=%2.2f degree",phir)
printf("\n\t(ii)")
s=1;
phir=atand(s*(X2/R2));
printf("\n  The phase difference between rotor emf and current for 100 percentage slip=%2.2f degree",phir)
