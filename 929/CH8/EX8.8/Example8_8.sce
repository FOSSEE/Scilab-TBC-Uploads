//Example 8.8

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

f3=10*10^3;

PM=45;

a0=g1*R1*g2*R2;

C1=1/(2*%pi*f1*R1);

b1=1;

f1new1=f2/(b1*a0);

Cc1=1/(2*%pi*R1*f1new1);

printf("(a) fd=%.f Hz",f1new1);

printf("\n    Cc=%.f nF",Cc1*10^9);

b2=0.5;

f1new2=f2/(b2*a0);

Cc2=1/(2*%pi*R1*f1new2);

printf("\n\n(b) fd=%.f Hz",f1new2);

printf("\n    Cc=%.1f nF",Cc2*10^9);