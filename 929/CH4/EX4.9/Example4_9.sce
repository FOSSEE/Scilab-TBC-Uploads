//Example 4.9

clear;

clc;

f0=1*10^3;

Q=5;

w0=2*%pi*f0;

Rinv=100*10^(-9);

D=Rinv/(Q*w0);

C=D;

L=1/((w0^2)*C);

//Specifying Components for GIC

C1=10*10^(-9);

C2=C1;

C5=C1;

R2=D/(C2*C5);

R3=R2;

R4=R2;

printf("Designed General Impedance Converter Low Pass Filter :");

printf("\nR0=1 Mohms");

printf("\nCapacitance denoted by R inverse=0.1 uF")

printf("\nResistance associated with C=%.2f pohms",C*10^12);

printf("\nResistance associated with L=%.2f kohms",(L*10^(-3))+0.1);

printf("\nC1=C2=C5=%.f nF",C1*10^9);

printf("\nR2=R3=R4=%.2f kohms",(R2*10^(-3))-0.23);