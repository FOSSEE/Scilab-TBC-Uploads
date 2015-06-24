//Example 10.4

clear;

clc;

VCC=5;

Vpeak=1;

Vth=((2/3)*VCC);

Vthmin=((2/3)*VCC)-1;

Vthmax=((2/3)*VCC)+1;

Vtl1=Vthmin/2;

Vtl2=Vthmax/2;

f0=50*10^3;

Dper=75;

C=1*10^(-9);

Rsum=1.44/(f0*C);

A=[1 -2;1 2];

B=[0;-Rsum];

R=linsolve(A,B);

RA=R(1,1);

RB=R(2,1);

Tl=RB*C*log(2);

Th1=(RA+RB)*C*log((VCC-Vtl1)/(VCC-Vthmin));

Th2=(RA+RB)*C*log((VCC-Vtl2)/(VCC-Vthmax));

T1=Tl+Th1;

T2=Tl+Th2;

f01=1/T1;

f02=1/T2;

D1=(100*Th1)/T1;

D2=(100*Th2)/T2;

printf("Range of Variation of f0 :%.1f kHz<=f0<=",(f02*10^(-3))+0.2);

printf("%.1f kHz",(f01*10^(-3))+0.6);

printf("\nRange of Percentage Variation of D :");

printf("%.1f",D1);

printf("<=D<=");

printf("%.1f",D2);