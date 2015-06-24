//Example 6.16

clear;

clc;

A0=10;

fB=100*10^6;

brec=1.5*10^3;

rn=50;

R2=brec-(rn*A0);

R1=R2/(A0-1);

printf("(a) Redisigned Current Feedback Amplifier of Example 6.15 :");

printf("\n    R1=%.f ohms",R1);

printf("\n    R2=%.2f kohms",R2*10^(-3));

z0=0.75*10^6;

T0=(1/brec)*z0;

epsilon=-100/T0;

printf("\n\n(b) Percentage dc gain error=%.1f",epsilon);