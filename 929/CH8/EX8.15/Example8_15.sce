//Example 8.15

clear;

clc;

zo=750*10^3;

fb=200*10^3;

rn=50;

R2=1.5*10^3;

Cn=100*10^(-12);

PM=45;

Cf=sqrt((rn*Cn)/(2*%pi*R2*zo*fb));

printf("Cf=%.2f pF",Cf*10^12);