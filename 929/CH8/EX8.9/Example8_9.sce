//Example 8.9

clear;

clc;

rd=1*10^6;

g1=2*10^(-3);

R1=100*10^(3);

g2=10*10^(-3);

R2=50*10^3;

ro=100;

f1=100*10^3;

f2=1*10^6;

f3=10*10^6;

PM=45;

a0=g1*R1*g2*R2;

C1=1/(2*%pi*f1*R1);

b1=1;

C21=1/(2*%pi*f2*R2);

f2newap1=g2/[2*%pi*(C1+C21)];

fx1=f3;

f1new1=f3/(b1*a0);

Cc1=1/(2*%pi*R1*g2*R2*f1new1);

f2new1=(g2*Cc1)/(2*%pi*((C1*C21)+(Cc1*C1)+(Cc1*C21)));

fz1=g2/(2*%pi*Cc1);

printf("(a) f1new=%.f Hz",f1new1);

printf("\n    f2new=%.f MHz",f2new1*10^(-6));

printf("\n    Cc=%.1f pF",Cc1*10^12);

b2=0.5;

C22=1/(2*%pi*f2*R2);

f2newap2=g2/[2*%pi*(C1+C22)];

fx2=f3;

f1new2=f3/(b2*a0);

Cc2=1/(2*%pi*R1*g2*R2*f1new2);

f2new2=(g2*Cc2)/(2*%pi*((C1*C22)+(Cc2*C1)+(Cc2*C22)));

fz2=g2/(2*%pi*Cc2);

printf("\n\n(b) f1new=%.f Hz",f1new2);

printf("\n    f2new=%.f MHz",f2new2*10^(-6));

printf("\n    Cc=%.1f pF",Cc2*10^12);