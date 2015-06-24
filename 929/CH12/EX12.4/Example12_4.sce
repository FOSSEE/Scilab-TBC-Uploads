//Example 12.4

clear;

clc;

Q=1/sqrt(2);

H0bp=-1;

f0step=10;

n=10;

R2=10*10^3;//Assumed

R4=R2;//Assumed

C=1*10^(-9);//Assumed

f0FSR=(2^n)*f0step;

R5=1/(2*%pi*f0FSR*C);

R3=Q*sqrt(R2*R4);

R1=-R3/H0bp;

printf("Designed Digitally Programmable filter :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nR4=%.f kohms",R4*10^(-3));

printf("\nR5=%.2f kohms",R5*10^(-3));

printf("\nC=%.f nF",C*10^9);