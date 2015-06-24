//Example 8.10

clear;

clc;

PM=45;

b=1;

rd=1*10^6;

g1=2*10^(-3);

R1=100*10^(3);

g2=10*10^(-3);

R2=50*10^3;

ro=100;

f1=100*10^3;

f2=1*10^6;

f3=10*10^6;

a0=g1*R1*g2*R2;

C1=1/(2*%pi*f1*R1);

Cc=(b*a0)/(2*%pi*R1*f3);

Rc=1/(2*%pi*Cc*f2);

f4=1/(2*%pi*Rc*C1);

printf("Cc=%.1f nF",Cc*10^9);

printf("\nRc=%.f ohms",Rc);

printf("\nR1=%.f kohms",R1*10^(-3));//The value of R1 is not provided in the textbook

printf("\nC1=%.2f pF",C1*10^12);//The value of R1 is not provided in the textbook