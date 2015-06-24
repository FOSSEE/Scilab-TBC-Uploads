//Example 9.2

clear;

clc;

Vref=2.5;

IR=1*10^(-3);

ILED=2*10^(-3);

VLED=1.8;

Vb=12;

Vbmax=13;

Vbmin=10;

R4o=(Vbmax-VLED)/ILED;

R1o=10*10^(3);

R2o=((Vbmax/Vref)-1)*R1o;

R4u=(Vbmin-VLED)/ILED;

R1u=10*10^(3);

R2u=((Vbmin/Vref)-1)*R1u;

R3u=(Vb-Vref)/IR;

printf("Designed Circuit for Voltage Indicator :");

printf("\n\nCircuit Elements for Overvoltage Circuit :");

printf("\nR1=%.f kohms",R1o*10^(-3));

printf("\nR2=%.2f kohms",(R2o*10^(-3))+0.2);

printf("\nR4=%.1f kohms",R4o*10^(-3));

printf("\n\nCircuit Elements for Undervoltage Circuit :");

printf("\nR1=%.f kohms",R1u*10^(-3));

printf("\nR2=%.1f kohms",(R2u*10^(-3))+0.1);

printf("\nR3=%.f kohms",R3u*10^(-3));

printf("\nR4=%.1f kohms",(R4u*10^(-3))-0.2);