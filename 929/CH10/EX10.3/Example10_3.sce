//Example 10.3

clear;

clc;

f0=50*10^3;

Dper=75;

C=1*10^(-9);

Rsum=1.44/(f0*C);

A=[1 -2;1 2];

B=[0;-Rsum];

R=linsolve(A,B);

RA=R(1,1);

RB=R(2,1);

printf("Designed Astable Multivibrator :");

printf("\nRA=%.1f kohms",RA*10^(-3));

printf("\nRB=%.2f kohms",RB*10^(-3));

printf("\nC=%.d nF",C*10^9);