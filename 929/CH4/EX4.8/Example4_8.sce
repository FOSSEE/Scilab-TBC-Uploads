//Example 4.8

clear;

clc;

f0=2*10^3;

Q=25;

C=10*10^(-9);//Assumed

w0=2*%pi*f0;

L=1/((w0^2)*C);

R=Q/((C/L)^(1/2));

//Specifying components of GIC

C2=C;

R1=(L/C2)^(1/2);

R3=R1;

R4=R1;

R5=R1;

printf("Designed Dual Amplifier Band Pass Filter :");

printf("\nC=%.2f nF",C*10^9);

printf("\nL=%.2f H",L);

printf("\nR=%.2f kohms",R*10^(-3));

printf("\n\nComponents of General Impedance Converter :");

printf("\nC2=%.2f nF",C2*10^9);

printf("\nR1=R3=R4=R5=%.2f kohms",R1*10^(-3));